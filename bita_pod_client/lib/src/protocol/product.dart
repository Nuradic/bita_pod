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

abstract class Product extends _i1.SerializableEntity {
  Product._({
    this.id,
    required this.name,
    this.image,
    required this.buyingPrice,
    required this.sellingPrice,
    this.brandId,
    this.brand,
    this.catagoryId,
    this.catagory,
    required this.shopId,
    this.shop,
  });

  factory Product({
    int? id,
    required String name,
    String? image,
    required double buyingPrice,
    required double sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    required int shopId,
    _i2.Shop? shop,
  }) = _ProductImpl;

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String?>(jsonSerialization['image']),
      buyingPrice: serializationManager
          .deserialize<double>(jsonSerialization['buyingPrice']),
      sellingPrice: serializationManager
          .deserialize<double>(jsonSerialization['sellingPrice']),
      brandId:
          serializationManager.deserialize<int?>(jsonSerialization['brandId']),
      brand: serializationManager
          .deserialize<_i2.Brand?>(jsonSerialization['brand']),
      catagoryId: serializationManager
          .deserialize<int?>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? image;

  double buyingPrice;

  double sellingPrice;

  int? brandId;

  _i2.Brand? brand;

  int? catagoryId;

  _i2.Catagory? catagory;

  int shopId;

  _i2.Shop? shop;

  Product copyWith({
    int? id,
    String? name,
    String? image,
    double? buyingPrice,
    double? sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    int? shopId,
    _i2.Shop? shop,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      'buyingPrice': buyingPrice,
      'sellingPrice': sellingPrice,
      if (brandId != null) 'brandId': brandId,
      if (brand != null) 'brand': brand?.toJson(),
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
    };
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    String? image,
    required double buyingPrice,
    required double sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    required int shopId,
    _i2.Shop? shop,
  }) : super._(
          id: id,
          name: name,
          image: image,
          buyingPrice: buyingPrice,
          sellingPrice: sellingPrice,
          brandId: brandId,
          brand: brand,
          catagoryId: catagoryId,
          catagory: catagory,
          shopId: shopId,
          shop: shop,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    Object? image = _Undefined,
    double? buyingPrice,
    double? sellingPrice,
    Object? brandId = _Undefined,
    Object? brand = _Undefined,
    Object? catagoryId = _Undefined,
    Object? catagory = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      image: image is String? ? image : this.image,
      buyingPrice: buyingPrice ?? this.buyingPrice,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      brandId: brandId is int? ? brandId : this.brandId,
      brand: brand is _i2.Brand? ? brand : this.brand?.copyWith(),
      catagoryId: catagoryId is int? ? catagoryId : this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
    );
  }
}
