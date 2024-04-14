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

abstract class Employe extends _i1.SerializableEntity {
  Employe._({
    this.id,
    required this.userId,
    this.user,
    required this.shopId,
    this.shop,
  });

  factory Employe({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int shopId,
    _i3.Shop? shop,
  }) = _EmployeImpl;

  factory Employe.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Employe(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['user']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i3.Shop?>(jsonSerialization['shop']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  _i2.UserInfo? user;

  int shopId;

  _i3.Shop? shop;

  Employe copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    int? shopId,
    _i3.Shop? shop,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
    };
  }
}

class _Undefined {}

class _EmployeImpl extends Employe {
  _EmployeImpl({
    int? id,
    required int userId,
    _i2.UserInfo? user,
    required int shopId,
    _i3.Shop? shop,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          shopId: shopId,
          shop: shop,
        );

  @override
  Employe copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? user = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
  }) {
    return Employe(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      shopId: shopId ?? this.shopId,
      shop: shop is _i3.Shop? ? shop : this.shop?.copyWith(),
    );
  }
}
