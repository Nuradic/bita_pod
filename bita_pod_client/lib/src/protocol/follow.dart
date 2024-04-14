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

abstract class Follow extends _i1.SerializableEntity {
  Follow._({
    this.id,
    required this.shopId,
    this.shop,
    required this.userId,
    this.user,
    required this.createdAt,
  });

  factory Follow({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required int userId,
    _i3.UserInfo? user,
    required DateTime createdAt,
  }) = _FollowImpl;

  factory Follow.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Follow(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int shopId;

  _i2.Shop? shop;

  int userId;

  _i3.UserInfo? user;

  DateTime createdAt;

  Follow copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _FollowImpl extends Follow {
  _FollowImpl({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required int userId,
    _i3.UserInfo? user,
    required DateTime createdAt,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
          createdAt: createdAt,
        );

  @override
  Follow copyWith({
    Object? id = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? createdAt,
  }) {
    return Follow(
      id: id is int? ? id : this.id,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
