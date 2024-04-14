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

abstract class Blocked extends _i1.SerializableEntity {
  Blocked._({
    this.id,
    this.shopId,
    this.shop,
    this.userId,
    this.user,
    this.productId,
    this.product,
    this.endDate,
  });

  factory Blocked({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  }) = _BlockedImpl;

  factory Blocked.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Blocked(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int?>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
      productId: serializationManager
          .deserialize<int?>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
      endDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endDate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? shopId;

  _i2.Shop? shop;

  int? userId;

  _i3.UserInfo? user;

  int? productId;

  _i2.Product? product;

  DateTime? endDate;

  Blocked copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (shopId != null) 'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
    };
  }
}

class _Undefined {}

class _BlockedImpl extends Blocked {
  _BlockedImpl({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
          productId: productId,
          product: product,
          endDate: endDate,
        );

  @override
  Blocked copyWith({
    Object? id = _Undefined,
    Object? shopId = _Undefined,
    Object? shop = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? productId = _Undefined,
    Object? product = _Undefined,
    Object? endDate = _Undefined,
  }) {
    return Blocked(
      id: id is int? ? id : this.id,
      shopId: shopId is int? ? shopId : this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
      productId: productId is int? ? productId : this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      endDate: endDate is DateTime? ? endDate : this.endDate,
    );
  }
}
