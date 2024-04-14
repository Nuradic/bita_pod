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

abstract class Sale extends _i1.SerializableEntity {
  Sale._({
    this.id,
    this.discount,
    required this.price,
    required this.orderId,
    this.order,
    this.desc,
  });

  factory Sale({
    int? id,
    double? discount,
    required int price,
    required int orderId,
    _i2.Order? order,
    String? desc,
  }) = _SaleImpl;

  factory Sale.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sale(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      discount: serializationManager
          .deserialize<double?>(jsonSerialization['discount']),
      price: serializationManager.deserialize<int>(jsonSerialization['price']),
      orderId:
          serializationManager.deserialize<int>(jsonSerialization['orderId']),
      order: serializationManager
          .deserialize<_i2.Order?>(jsonSerialization['order']),
      desc:
          serializationManager.deserialize<String?>(jsonSerialization['desc']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double? discount;

  int price;

  int orderId;

  _i2.Order? order;

  String? desc;

  Sale copyWith({
    int? id,
    double? discount,
    int? price,
    int? orderId,
    _i2.Order? order,
    String? desc,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (discount != null) 'discount': discount,
      'price': price,
      'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      if (desc != null) 'desc': desc,
    };
  }
}

class _Undefined {}

class _SaleImpl extends Sale {
  _SaleImpl({
    int? id,
    double? discount,
    required int price,
    required int orderId,
    _i2.Order? order,
    String? desc,
  }) : super._(
          id: id,
          discount: discount,
          price: price,
          orderId: orderId,
          order: order,
          desc: desc,
        );

  @override
  Sale copyWith({
    Object? id = _Undefined,
    Object? discount = _Undefined,
    int? price,
    int? orderId,
    Object? order = _Undefined,
    Object? desc = _Undefined,
  }) {
    return Sale(
      id: id is int? ? id : this.id,
      discount: discount is double? ? discount : this.discount,
      price: price ?? this.price,
      orderId: orderId ?? this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      desc: desc is String? ? desc : this.desc,
    );
  }
}
