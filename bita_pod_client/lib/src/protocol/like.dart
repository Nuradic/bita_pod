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

abstract class Like extends _i1.SerializableEntity {
  Like._({
    this.id,
    required this.productId,
    this.product,
    required this.userId,
    this.user,
  });

  factory Like({
    int? id,
    required int productId,
    _i2.Product? product,
    required int userId,
    _i3.UserInfo? user,
  }) = _LikeImpl;

  factory Like.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Like(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
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

  int productId;

  _i2.Product? product;

  int userId;

  _i3.UserInfo? user;

  Like copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }
}

class _Undefined {}

class _LikeImpl extends Like {
  _LikeImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          userId: userId,
          user: user,
        );

  @override
  Like copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Like(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
