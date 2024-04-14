import 'package:bita_pod_server/src/generated/protocol.dart';
import 'package:bita_pod_server/utils/email.dart';
import 'package:serverpod/protocol.dart';
import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/module.dart';

import "../../utils/utils.dart";

Future<BackgroundInfo> insertUser(Session session, BackgroundInfo bg) async {
  final uid = Uuid().v4();

  var userInfo = UserInfo(
      userIdentifier: uid,
      userName: uid,
      created: DateTime.now(),
      scopeNames: [],
      blocked: false);
  userInfo = await UserInfo.db.insertRow(session, userInfo);
  bg.userId = userInfo.id!;
  bg.user = userInfo;
  return BackgroundInfo.db.insertRow(session, bg);
}

class UserEndpoint extends Endpoint {
  Future<UserStatus> getStartedPhone(Session session, BackgroundInfo bg) async {
    if (bg.phoneNumber == null) {
      throw EndpointException(
          message: "Phone number is not provided ", code: 400);
    }
    final user = await BackgroundInfo.db.findFirstRow(session,
        where: (t) => t.phoneNumber.equals(bg.phoneNumber));

    if (user != null) {
      final usersShop = await Shop.db
          .findFirstRow(session, where: (t) => t.ownerId.equals(user.id));
      return user.firstName == null ||
              user.lastName == null ||
              user.password == null
          ? UserStatus.incomplete
          : usersShop == null
              ? UserStatus.noShopAssociated
              : UserStatus.noIssue;
    }

    var request = await SignUpRequest.db.findFirstRow(session,
        where: (t) => t.phoneNumber.equals(bg.phoneNumber));

    request ??= await SignUpRequest.db.insertRow(
      session,
      SignUpRequest(
        phoneNumber: bg.phoneNumber,
        phoneOtp: "${Utils.generateSecureRandom()}",
      ),
    );

    return UserStatus.unverified;
  }

  Future<UserStatus> getStartedEmail(Session session, BackgroundInfo bg) async {
    if (bg.email != null) {
      try {
        final user = await BackgroundInfo.db
            .findFirstRow(session, where: (t) => t.email.equals(bg.email));

        if (user != null) {
          final usersShop = await Shop.db
              .findFirstRow(session, where: (t) => t.ownerId.equals(user.id));
          return user.firstName == null ||
                  user.lastName == null ||
                  user.password == null
              ? UserStatus.incomplete
              : usersShop == null
                  ? UserStatus.noShopAssociated
                  : UserStatus.noIssue;
        }

        var request = await SignUpRequest.db
            .findFirstRow(session, where: (t) => t.email.equals(bg.email));

        final otp = Utils.generateSecureRandom();

        request ??= await SignUpRequest.db.insertRow(
          session,
          SignUpRequest(email: bg.email),
        );

        request.emailOtp = "$otp";
        await SignUpRequest.db.updateRow(session, request);
        await SendMail.sendOtp("$otp", request);

        request.isEmailVerified ?? false;

        return UserStatus.unverified;
      } catch (e) {
        session.log(e.toString());
      }
    }
    return UserStatus.noIssue;
    // return StartStatus(
    //     isRegistrationComplete: false, created: false, isVerified: false);
  }

  Future<Authentication?> loginWithOtpAndPhone(
      Session session, String phone, String otp) async {
    final req = await SignUpRequest.db
        .findFirstRow(session, where: (t) => t.phoneNumber.equals(phone));

    if (req == null || req.phoneOtp != otp) return null;

    var bg = BackgroundInfo(phoneNumber: req.phoneNumber);

    final alreadyExists = await BackgroundInfo.db.findFirstRow(session,
        where: (t) => t.phoneNumber.equals(phone),
        include: BackgroundInfo.include(user: UserInfo.include()));

    if (alreadyExists != null) {
      req.isPhoneVerified = true;

      await SignUpRequest.db.updateRow(session, req);

      final key =
          await session.auth.signInUser(alreadyExists.userId!, "EmailOTP");

      final shops = await Shop.db
          .find(session, where: (t) => t.ownerId.equals(alreadyExists.userId));

      return Authentication(
          id: key.id!,
          key: key.key!,
          user: alreadyExists.user!,
          bg: alreadyExists,
          status:
              shops.isEmpty ? UserStatus.noShopAssociated : UserStatus.noIssue);
    } else {
      bg = await insertUser(session, bg);

      req.isPhoneVerified = true;

      await SignUpRequest.db.updateRow(session, req);

      final key = await session.auth.signInUser(bg.userId!, "EmailOTP");

      final user = await UserInfo.db.findById(session, bg.userId!);

      return Authentication(
        id: key.id!,
        key: key.key!,
        user: user!,
        bg: bg,
        status: UserStatus.noShopAssociated,
      );
    }
  }

  Future<Authentication?> loginWithOtpAndEmail(
      Session session, String email, String otp) async {
    SignUpRequestTable();
    final req = await SignUpRequest.db
        .findFirstRow(session, where: (t) => t.email.equals(email));

    if (req == null || req.emailOtp != otp) return null;

    final alreadyExists = await BackgroundInfo.db.findFirstRow(
      session,
      where: (t) => t.email.equals(email),
      include: BackgroundInfo.include(user: UserInfo.include()),
    );

    if (alreadyExists != null) {
      req.isPhoneVerified = true;

      await SignUpRequest.db.updateRow(session, req);

      final key =
          await session.auth.signInUser(alreadyExists.userId!, "PhoneOTP");

      return Authentication(
          id: key.id!,
          key: key.key!,
          user: alreadyExists.user!,
          bg: alreadyExists);
    } else {
      var bg = BackgroundInfo(phoneNumber: req.phoneNumber);
      bg = await insertUser(session, bg);

      req.isPhoneVerified = true;

      await SignUpRequest.db.updateRow(session, req);

      final key = await session.auth.signInUser(bg.userId!, "EmailOTP");

      final user = await UserInfo.db.findById(session, bg.userId!);

      return Authentication(
          id: key.id!,
          key: key.key!,
          user: user!,
          bg: bg,
          status: UserStatus.incomplete);
    }
  }

  Future<Authentication?> loginWithPhoneAndPassword(
      Session session, String phone, String password) async {
    final info = await BackgroundInfo.db.findFirstRow(session,
        where: (t) => t.phoneNumber.equals(phone),
        include: BackgroundInfo.include(user: UserInfo.include()));

    if (password != info!.password) return null;

    final key = await session.auth.signInUser(info.userId!, "EmailAndPassword");

    return Authentication(
        id: key.id!, key: key.key!, user: info.user!, bg: info);
  }

  Future<Authentication?> loginWithEmailAndPassword(
      Session session, String email, String password) async {
    final info = await BackgroundInfo.db.findFirstRow(session,
        where: (t) => t.email.equals(email),
        include: BackgroundInfo.include(user: UserInfo.include()));

    if (password != info!.password) return null;

    final key = await session.auth.signInUser(info.userId!, "EmailAndPassword");

    return Authentication(
        id: key.id!, key: key.key!, user: info.user!, bg: info);
  }

  Future<void> logout(Session session) async =>
      session.auth.signOutUser(userId: await session.auth.authenticatedUserId);

  Future<BackgroundInfo?> getBgInfo(Session session) async {
    final userId = await session.auth.authenticatedUserId;
    print(userId);
    return BackgroundInfo.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
      include: BackgroundInfo.include(
        user: UserInfo.include(),
      ),
    );
  }

  Future<bool> checkIfnumberOremailExists(Session session, String value) async {
    final bg = await BackgroundInfo.db.findFirstRow(
      session,
      where: (t) => t.phoneNumber.equals(value) | t.email.equals(value),
      include: BackgroundInfo.include(
        user: UserInfo.include(),
      ),
    );
    return bg == null;
  }

  Future<BackgroundInfo> updateUser(
      Session session, BackgroundInfo info) async {
    info = await BackgroundInfo.db.updateRow(session, info);

    UserInfo? user = await UserInfo.db.findById(session, info.userId!);

    user!.fullName = "${info.firstName} ${info.lastName}";

    await UserInfo.db.updateRow(session, user);

    return info;
  }
}
