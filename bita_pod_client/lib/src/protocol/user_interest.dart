/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_client/module.dart' as _i3;

abstract class UserInterest extends _i1.SerializableEntity {
  UserInterest._({
    this.id,
    required this.catagoryId,
    this.catagory,
    required this.userId,
    this.user,
  });

  factory UserInterest({
    int? id,
    required int catagoryId,
    _i2.Catagory? catagory,
    required int userId,
    _i3.UserInfo? user,
  }) = _UserInterestImpl;

  factory UserInterest.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserInterest(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      catagoryId: serializationManager
          .deserialize<int>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int catagoryId;

  _i2.Catagory? catagory;

  int userId;

  _i3.UserInfo? user;

  UserInterest copyWith({
    int? id,
    int? catagoryId,
    _i2.Catagory? catagory,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }
}

class _Undefined {}

class _UserInterestImpl extends UserInterest {
  _UserInterestImpl({
    int? id,
    required int catagoryId,
    _i2.Catagory? catagory,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          catagoryId: catagoryId,
          catagory: catagory,
          userId: userId,
          user: user,
        );

  @override
  UserInterest copyWith({
    Object? id = _Undefined,
    int? catagoryId,
    Object? catagory = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return UserInterest(
      id: id is int? ? id : this.id,
      catagoryId: catagoryId ?? this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
