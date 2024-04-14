// import 'package:bita_pod_server/src/generated/protocol.dart';
// import 'package:serverpod/protocol.dart';
// import 'package:serverpod/serverpod.dart';
// import 'package:serverpod_auth_server/module.dart';

// Future<BackgroundInfo> insertUser(Session session, BackgroundInfo bg) async {
//   final uid = Uuid();
//   var userInfo = UserInfo(
//       userIdentifier: uid.v4(),
//       userName: uid.v4(),
//       created: DateTime.now(),
//       scopeNames: [],
//       blocked: false);
//   userInfo = await UserInfo.db.insertRow(session, userInfo);
//   bg.userId = userInfo.id!;
//   return BackgroundInfo.db.insertRow(session, bg);
// }

// class UserEndpoint extends Endpoint {
//   Future<BackgroundInfo> registerUserByEmail(
//       Session session, BackgroundInfo bg) async {
//     if (bg.email == null) {
//       throw EndpointException(code: 400, message: "Email is required");
//     }
//     bool exists = await UserInfo.db
//             .count(session, where: (t) => t.email.equals(bg.email!)) !=
//         0;

//     if (exists) {
//       throw EndpointException(
//           code: 400, message: "User with this email already exists");
//     }

//     return await insertUser(session, bg);
//   }

//   Future<BackgroundInfo> registerUserByPhone(
//       Session session, BackgroundInfo bg) async {
//     if (bg.phoneNumber == null) {
//       throw EndpointException(code: 400, message: "Phone is required");
//     }
//     bool exists = await BackgroundInfo.db.count(
//           session,
//           where: (t) => t.phoneNumber.equals(bg.phoneNumber!),
//         ) !=
//         0;

//     if (exists) {
//       throw EndpointException(
//           code: 400, message: "User with this phone already exists");
//     }

//     return await insertUser(session, bg);
//   }

//   Future<BackgroundInfo?> loginWithPhone(Session session, String phone) async {
//     print("hello,World");
//     final userbg = (await BackgroundInfo.db.find(session))[0];
//     session.log("this is error ${userbg.toString()}");
//     // if (userbg != null) {
//     //   session.auth.signInUser(userbg.userId!, "phone_login");
//     // }

//     return userbg;
//   }

//   Future<BackgroundInfo?> loginWithEmail(Session session, String email) async {
//     final userbg = await BackgroundInfo.db.findFirstRow(
//       session,
//       where: (user) =>
//           user.email.equals(email) & user.user.blocked.equals(false),
//     );

//     if (userbg != null) {
//       session.auth.signInUser(userbg.userId!, "email_login");
//     }

//     return userbg;
//   }
// }
