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

abstract class ShopReview extends _i1.SerializableEntity {
  ShopReview._({
    this.id,
    this.userId,
    this.user,
    required this.shopId,
    this.shop,
    this.content,
    required this.rate,
  });

  factory ShopReview({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    required int shopId,
    _i3.Shop? shop,
    String? content,
    required _i3.ShopRate rate,
  }) = _ShopReviewImpl;

  factory ShopReview.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ShopReview(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['user']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i3.Shop?>(jsonSerialization['shop']),
      content: serializationManager
          .deserialize<String?>(jsonSerialization['content']),
      rate: serializationManager
          .deserialize<_i3.ShopRate>(jsonSerialization['rate']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  _i2.UserInfo? user;

  int shopId;

  _i3.Shop? shop;

  String? content;

  _i3.ShopRate rate;

  ShopReview copyWith({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    int? shopId,
    _i3.Shop? shop,
    String? content,
    _i3.ShopRate? rate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (content != null) 'content': content,
      'rate': rate.toJson(),
    };
  }
}

class _Undefined {}

class _ShopReviewImpl extends ShopReview {
  _ShopReviewImpl({
    int? id,
    int? userId,
    _i2.UserInfo? user,
    required int shopId,
    _i3.Shop? shop,
    String? content,
    required _i3.ShopRate rate,
  }) : super._(
          id: id,
          userId: userId,
          user: user,
          shopId: shopId,
          shop: shop,
          content: content,
          rate: rate,
        );

  @override
  ShopReview copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    Object? content = _Undefined,
    _i3.ShopRate? rate,
  }) {
    return ShopReview(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
      shopId: shopId ?? this.shopId,
      shop: shop is _i3.Shop? ? shop : this.shop?.copyWith(),
      content: content is String? ? content : this.content,
      rate: rate ?? this.rate,
    );
  }
}
