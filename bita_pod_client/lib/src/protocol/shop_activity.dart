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

abstract class ShopActivity extends _i1.SerializableEntity {
  ShopActivity._({
    this.id,
    this.employeId,
    this.employe,
    required this.shopId,
    this.shop,
    this.desc,
    this.action,
    required this.timestamp,
  });

  factory ShopActivity({
    int? id,
    int? employeId,
    _i2.UserInfo? employe,
    required int shopId,
    _i3.Shop? shop,
    String? desc,
    _i3.ShopAction? action,
    required DateTime timestamp,
  }) = _ShopActivityImpl;

  factory ShopActivity.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ShopActivity(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      employeId: serializationManager
          .deserialize<int?>(jsonSerialization['employeId']),
      employe: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['employe']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i3.Shop?>(jsonSerialization['shop']),
      desc:
          serializationManager.deserialize<String?>(jsonSerialization['desc']),
      action: serializationManager
          .deserialize<_i3.ShopAction?>(jsonSerialization['action']),
      timestamp: serializationManager
          .deserialize<DateTime>(jsonSerialization['timestamp']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? employeId;

  _i2.UserInfo? employe;

  int shopId;

  _i3.Shop? shop;

  String? desc;

  _i3.ShopAction? action;

  DateTime timestamp;

  ShopActivity copyWith({
    int? id,
    int? employeId,
    _i2.UserInfo? employe,
    int? shopId,
    _i3.Shop? shop,
    String? desc,
    _i3.ShopAction? action,
    DateTime? timestamp,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (employeId != null) 'employeId': employeId,
      if (employe != null) 'employe': employe?.toJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (desc != null) 'desc': desc,
      if (action != null) 'action': action?.toJson(),
      'timestamp': timestamp.toJson(),
    };
  }
}

class _Undefined {}

class _ShopActivityImpl extends ShopActivity {
  _ShopActivityImpl({
    int? id,
    int? employeId,
    _i2.UserInfo? employe,
    required int shopId,
    _i3.Shop? shop,
    String? desc,
    _i3.ShopAction? action,
    required DateTime timestamp,
  }) : super._(
          id: id,
          employeId: employeId,
          employe: employe,
          shopId: shopId,
          shop: shop,
          desc: desc,
          action: action,
          timestamp: timestamp,
        );

  @override
  ShopActivity copyWith({
    Object? id = _Undefined,
    Object? employeId = _Undefined,
    Object? employe = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    Object? desc = _Undefined,
    Object? action = _Undefined,
    DateTime? timestamp,
  }) {
    return ShopActivity(
      id: id is int? ? id : this.id,
      employeId: employeId is int? ? employeId : this.employeId,
      employe: employe is _i2.UserInfo? ? employe : this.employe?.copyWith(),
      shopId: shopId ?? this.shopId,
      shop: shop is _i3.Shop? ? shop : this.shop?.copyWith(),
      desc: desc is String? ? desc : this.desc,
      action: action is _i3.ShopAction? ? action : this.action,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}
