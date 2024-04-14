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

abstract class Item extends _i1.SerializableEntity {
  Item._({
    this.id,
    required this.productId,
    this.product,
    required this.quantity,
    this.orderId,
    this.order,
    required this.createdAt,
  });

  factory Item({
    int? id,
    required int productId,
    _i2.Product? product,
    required int quantity,
    int? orderId,
    _i2.Order? order,
    required DateTime createdAt,
  }) = _ItemImpl;

  factory Item.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Item(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
      quantity:
          serializationManager.deserialize<int>(jsonSerialization['quantity']),
      orderId:
          serializationManager.deserialize<int?>(jsonSerialization['orderId']),
      order: serializationManager
          .deserialize<_i2.Order?>(jsonSerialization['order']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  _i2.Product? product;

  int quantity;

  int? orderId;

  _i2.Order? order;

  DateTime createdAt;

  Item copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    int? quantity,
    int? orderId,
    _i2.Order? order,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'quantity': quantity,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _ItemImpl extends Item {
  _ItemImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required int quantity,
    int? orderId,
    _i2.Order? order,
    required DateTime createdAt,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          quantity: quantity,
          orderId: orderId,
          order: order,
          createdAt: createdAt,
        );

  @override
  Item copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? quantity,
    Object? orderId = _Undefined,
    Object? order = _Undefined,
    DateTime? createdAt,
  }) {
    return Item(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      quantity: quantity ?? this.quantity,
      orderId: orderId is int? ? orderId : this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
