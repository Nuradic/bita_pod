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

abstract class Order extends _i1.SerializableEntity {
  Order._({
    this.id,
    required this.status,
    this.soldById,
    this.soldBy,
    required this.message,
    required this.shopId,
    this.shop,
    this.userId,
    this.user,
  });

  factory Order({
    int? id,
    required _i2.OrderStatus status,
    int? soldById,
    _i3.UserInfo? soldBy,
    required String message,
    required int shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  }) = _OrderImpl;

  factory Order.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Order(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      status: serializationManager
          .deserialize<_i2.OrderStatus>(jsonSerialization['status']),
      soldById:
          serializationManager.deserialize<int?>(jsonSerialization['soldById']),
      soldBy: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['soldBy']),
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.OrderStatus status;

  int? soldById;

  _i3.UserInfo? soldBy;

  String message;

  int shopId;

  _i2.Shop? shop;

  int? userId;

  _i3.UserInfo? user;

  Order copyWith({
    int? id,
    _i2.OrderStatus? status,
    int? soldById,
    _i3.UserInfo? soldBy,
    String? message,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'status': status.toJson(),
      if (soldById != null) 'soldById': soldById,
      if (soldBy != null) 'soldBy': soldBy?.toJson(),
      'message': message,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required _i2.OrderStatus status,
    int? soldById,
    _i3.UserInfo? soldBy,
    required String message,
    required int shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          status: status,
          soldById: soldById,
          soldBy: soldBy,
          message: message,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
        );

  @override
  Order copyWith({
    Object? id = _Undefined,
    _i2.OrderStatus? status,
    Object? soldById = _Undefined,
    Object? soldBy = _Undefined,
    String? message,
    int? shopId,
    Object? shop = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      status: status ?? this.status,
      soldById: soldById is int? ? soldById : this.soldById,
      soldBy: soldBy is _i3.UserInfo? ? soldBy : this.soldBy?.copyWith(),
      message: message ?? this.message,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}
