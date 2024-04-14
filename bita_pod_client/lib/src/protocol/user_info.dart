/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;

abstract class BackgroundInfo extends _i1.SerializableEntity {
  BackgroundInfo._({
    this.id,
    this.phoneNumber,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.userId,
    this.user,
  });

  factory BackgroundInfo({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  }) = _BackgroundInfoImpl;

  factory BackgroundInfo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BackgroundInfo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      phoneNumber: serializationManager
          .deserialize<String?>(jsonSerialization['phoneNumber']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      password: serializationManager
          .deserialize<String?>(jsonSerialization['password']),
      firstName: serializationManager
          .deserialize<String?>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String?>(jsonSerialization['lastName']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['user']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? phoneNumber;

  String? email;

  String? password;

  String? firstName;

  String? lastName;

  int? userId;

  _i2.UserInfo? user;

  BackgroundInfo copyWith({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }
}

class _Undefined {}

class _BackgroundInfoImpl extends BackgroundInfo {
  _BackgroundInfoImpl({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  }) : super._(
          id: id,
          phoneNumber: phoneNumber,
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
          userId: userId,
          user: user,
        );

  @override
  BackgroundInfo copyWith({
    Object? id = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    Object? password = _Undefined,
    Object? firstName = _Undefined,
    Object? lastName = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
  }) {
    return BackgroundInfo(
      id: id is int? ? id : this.id,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      password: password is String? ? password : this.password,
      firstName: firstName is String? ? firstName : this.firstName,
      lastName: lastName is String? ? lastName : this.lastName,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
