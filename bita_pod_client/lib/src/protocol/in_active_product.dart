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

abstract class InActiveProduct extends _i1.SerializableEntity {
  InActiveProduct._({
    this.id,
    required this.productId,
    this.product,
  });

  factory InActiveProduct({
    int? id,
    required int productId,
    _i2.Product? product,
  }) = _InActiveProductImpl;

  factory InActiveProduct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InActiveProduct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int productId;

  _i2.Product? product;

  InActiveProduct copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
    };
  }
}

class _Undefined {}

class _InActiveProductImpl extends InActiveProduct {
  _InActiveProductImpl({
    int? id,
    required int productId,
    _i2.Product? product,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
        );

  @override
  InActiveProduct copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
  }) {
    return InActiveProduct(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
    );
  }
}
