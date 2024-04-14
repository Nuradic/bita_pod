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
import 'protocol.dart' as _i3;

abstract class Notification extends _i1.SerializableEntity {
  Notification._({
    this.id,
    required this.userId,
    this.user,
    required this.title,
    required this.type,
    required this.content,
  });

  factory Notification({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String title,
    required _i3.NotificationType type,
    required String content,
  }) = _NotificationImpl;

  factory Notification.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Notification(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['user']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      type: serializationManager
          .deserialize<_i3.NotificationType>(jsonSerialization['type']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserInfo? user;

  String title;

  _i3.NotificationType type;

  String content;

  Notification copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    String? title,
    _i3.NotificationType? type,
    String? content,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'title': title,
      'type': type.toJson(),
      'content': content,
    };
  }
}

class _Undefined {}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required String title,
    required _i3.NotificationType type,
    required String content,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          title: title,
          type: type,
          content: content,
        );

  @override
  Notification copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    String? title,
    _i3.NotificationType? type,
    String? content,
  }) {
    return Notification(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      title: title ?? this.title,
      type: type ?? this.type,
      content: content ?? this.content,
    );
  }
}
