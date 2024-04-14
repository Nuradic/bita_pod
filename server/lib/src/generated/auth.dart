/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class Authentication extends _i1.SerializableEntity {
  Authentication._({
    required this.id,
    required this.key,
    required this.user,
    required this.bg,
    this.status,
  });

  factory Authentication({
    required int id,
    required String key,
    required _i2.UserInfo user,
    required _i3.BackgroundInfo bg,
    _i3.UserStatus? status,
  }) = _AuthenticationImpl;

  factory Authentication.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Authentication(
      id: serializationManager.deserialize<int>(jsonSerialization['id']),
      key: serializationManager.deserialize<String>(jsonSerialization['key']),
      user: serializationManager
          .deserialize<_i2.UserInfo>(jsonSerialization['user']),
      bg: serializationManager
          .deserialize<_i3.BackgroundInfo>(jsonSerialization['bg']),
      status: serializationManager
          .deserialize<_i3.UserStatus?>(jsonSerialization['status']),
    );
  }

  int id;

  String key;

  _i2.UserInfo user;

  _i3.BackgroundInfo bg;

  _i3.UserStatus? status;

  Authentication copyWith({
    int? id,
    String? key,
    _i2.UserInfo? user,
    _i3.BackgroundInfo? bg,
    _i3.UserStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'key': key,
      'user': user.toJson(),
      'bg': bg.toJson(),
      if (status != null) 'status': status?.toJson(),
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'id': id,
      'key': key,
      'user': user.allToJson(),
      'bg': bg.allToJson(),
      if (status != null) 'status': status?.toJson(),
    };
  }
}

class _Undefined {}

class _AuthenticationImpl extends Authentication {
  _AuthenticationImpl({
    required int id,
    required String key,
    required _i2.UserInfo user,
    required _i3.BackgroundInfo bg,
    _i3.UserStatus? status,
  }) : super._(
          id: id,
          key: key,
          user: user,
          bg: bg,
          status: status,
        );

  @override
  Authentication copyWith({
    int? id,
    String? key,
    _i2.UserInfo? user,
    _i3.BackgroundInfo? bg,
    Object? status = _Undefined,
  }) {
    return Authentication(
      id: id ?? this.id,
      key: key ?? this.key,
      user: user ?? this.user.copyWith(),
      bg: bg ?? this.bg.copyWith(),
      status: status is _i3.UserStatus? ? status : this.status,
    );
  }
}
