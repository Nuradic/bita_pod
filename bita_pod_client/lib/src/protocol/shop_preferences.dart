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

abstract class ShopPreference extends _i1.SerializableEntity {
  ShopPreference._({
    this.id,
    required this.shopId,
    this.shop,
    required this.isAvailableOnline,
    required this.notifyNewProductComing,
    required this.acceptOrders,
  });

  factory ShopPreference({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required bool isAvailableOnline,
    required bool notifyNewProductComing,
    required bool acceptOrders,
  }) = _ShopPreferenceImpl;

  factory ShopPreference.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ShopPreference(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      isAvailableOnline: serializationManager
          .deserialize<bool>(jsonSerialization['isAvailableOnline']),
      notifyNewProductComing: serializationManager
          .deserialize<bool>(jsonSerialization['notifyNewProductComing']),
      acceptOrders: serializationManager
          .deserialize<bool>(jsonSerialization['acceptOrders']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int shopId;

  _i2.Shop? shop;

  bool isAvailableOnline;

  bool notifyNewProductComing;

  bool acceptOrders;

  ShopPreference copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    bool? isAvailableOnline,
    bool? notifyNewProductComing,
    bool? acceptOrders,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      'isAvailableOnline': isAvailableOnline,
      'notifyNewProductComing': notifyNewProductComing,
      'acceptOrders': acceptOrders,
    };
  }
}

class _Undefined {}

class _ShopPreferenceImpl extends ShopPreference {
  _ShopPreferenceImpl({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required bool isAvailableOnline,
    required bool notifyNewProductComing,
    required bool acceptOrders,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          isAvailableOnline: isAvailableOnline,
          notifyNewProductComing: notifyNewProductComing,
          acceptOrders: acceptOrders,
        );

  @override
  ShopPreference copyWith({
    Object? id = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    bool? isAvailableOnline,
    bool? notifyNewProductComing,
    bool? acceptOrders,
  }) {
    return ShopPreference(
      id: id is int? ? id : this.id,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      isAvailableOnline: isAvailableOnline ?? this.isAvailableOnline,
      notifyNewProductComing:
          notifyNewProductComing ?? this.notifyNewProductComing,
      acceptOrders: acceptOrders ?? this.acceptOrders,
    );
  }
}
