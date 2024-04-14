/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'address.dart' as _i2;
import 'auth.dart' as _i3;
import 'biz_size.dart' as _i4;
import 'blocked.dart' as _i5;
import 'brand.dart' as _i6;
import 'catagory.dart' as _i7;
import 'employe.dart' as _i8;
import 'example.dart' as _i9;
import 'follow.dart' as _i10;
import 'gift_card.dart' as _i11;
import 'http_error.dart' as _i12;
import 'in_active_product.dart' as _i13;
import 'item.dart' as _i14;
import 'like.dart' as _i15;
import 'notification.dart' as _i16;
import 'notification_type.dart' as _i17;
import 'order.dart' as _i18;
import 'order_status.dart' as _i19;
import 'policy.dart' as _i20;
import 'product.dart' as _i21;
import 'report.dart' as _i22;
import 'report_status.dart' as _i23;
import 'sale.dart' as _i24;
import 'shop.dart' as _i25;
import 'shop_action.dart' as _i26;
import 'shop_activity.dart' as _i27;
import 'shop_preferences.dart' as _i28;
import 'shop_rate.dart' as _i29;
import 'shop_review.dart' as _i30;
import 'shop_role.dart' as _i31;
import 'start_status.dart' as _i32;
import 'user_info.dart' as _i33;
import 'user_interest.dart' as _i34;
import 'user_status.dart' as _i35;
import 'protocol.dart' as _i36;
import 'package:bita_pod_client/src/protocol/catagory.dart' as _i37;
import 'package:bita_pod_client/src/protocol/brand.dart' as _i38;
import 'package:bita_pod_client/src/protocol/shop.dart' as _i39;
import 'package:serverpod_auth_client/module.dart' as _i40;
export 'address.dart';
export 'auth.dart';
export 'biz_size.dart';
export 'blocked.dart';
export 'brand.dart';
export 'catagory.dart';
export 'employe.dart';
export 'example.dart';
export 'follow.dart';
export 'gift_card.dart';
export 'http_error.dart';
export 'in_active_product.dart';
export 'item.dart';
export 'like.dart';
export 'notification.dart';
export 'notification_type.dart';
export 'order.dart';
export 'order_status.dart';
export 'policy.dart';
export 'product.dart';
export 'report.dart';
export 'report_status.dart';
export 'sale.dart';
export 'shop.dart';
export 'shop_action.dart';
export 'shop_activity.dart';
export 'shop_preferences.dart';
export 'shop_rate.dart';
export 'shop_review.dart';
export 'shop_role.dart';
export 'start_status.dart';
export 'user_info.dart';
export 'user_interest.dart';
export 'user_status.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Address) {
      return _i2.Address.fromJson(data, this) as T;
    }
    if (t == _i3.Authentication) {
      return _i3.Authentication.fromJson(data, this) as T;
    }
    if (t == _i4.BizSize) {
      return _i4.BizSize.fromJson(data) as T;
    }
    if (t == _i5.Blocked) {
      return _i5.Blocked.fromJson(data, this) as T;
    }
    if (t == _i6.Brand) {
      return _i6.Brand.fromJson(data, this) as T;
    }
    if (t == _i7.Catagory) {
      return _i7.Catagory.fromJson(data, this) as T;
    }
    if (t == _i8.Employe) {
      return _i8.Employe.fromJson(data, this) as T;
    }
    if (t == _i9.Example) {
      return _i9.Example.fromJson(data, this) as T;
    }
    if (t == _i10.Follow) {
      return _i10.Follow.fromJson(data, this) as T;
    }
    if (t == _i11.GiftCard) {
      return _i11.GiftCard.fromJson(data, this) as T;
    }
    if (t == _i12.EndpointException) {
      return _i12.EndpointException.fromJson(data, this) as T;
    }
    if (t == _i13.InActiveProduct) {
      return _i13.InActiveProduct.fromJson(data, this) as T;
    }
    if (t == _i14.Item) {
      return _i14.Item.fromJson(data, this) as T;
    }
    if (t == _i15.Like) {
      return _i15.Like.fromJson(data, this) as T;
    }
    if (t == _i16.Notification) {
      return _i16.Notification.fromJson(data, this) as T;
    }
    if (t == _i17.NotificationType) {
      return _i17.NotificationType.fromJson(data) as T;
    }
    if (t == _i18.Order) {
      return _i18.Order.fromJson(data, this) as T;
    }
    if (t == _i19.OrderStatus) {
      return _i19.OrderStatus.fromJson(data) as T;
    }
    if (t == _i20.Policy) {
      return _i20.Policy.fromJson(data, this) as T;
    }
    if (t == _i21.Product) {
      return _i21.Product.fromJson(data, this) as T;
    }
    if (t == _i22.Report) {
      return _i22.Report.fromJson(data, this) as T;
    }
    if (t == _i23.ReportStatus) {
      return _i23.ReportStatus.fromJson(data) as T;
    }
    if (t == _i24.Sale) {
      return _i24.Sale.fromJson(data, this) as T;
    }
    if (t == _i25.Shop) {
      return _i25.Shop.fromJson(data, this) as T;
    }
    if (t == _i26.ShopAction) {
      return _i26.ShopAction.fromJson(data) as T;
    }
    if (t == _i27.ShopActivity) {
      return _i27.ShopActivity.fromJson(data, this) as T;
    }
    if (t == _i28.ShopPreference) {
      return _i28.ShopPreference.fromJson(data, this) as T;
    }
    if (t == _i29.ShopRate) {
      return _i29.ShopRate.fromJson(data) as T;
    }
    if (t == _i30.ShopReview) {
      return _i30.ShopReview.fromJson(data, this) as T;
    }
    if (t == _i31.ShopRole) {
      return _i31.ShopRole.fromJson(data) as T;
    }
    if (t == _i32.StartStatus) {
      return _i32.StartStatus.fromJson(data, this) as T;
    }
    if (t == _i33.BackgroundInfo) {
      return _i33.BackgroundInfo.fromJson(data, this) as T;
    }
    if (t == _i34.UserInterest) {
      return _i34.UserInterest.fromJson(data, this) as T;
    }
    if (t == _i35.UserStatus) {
      return _i35.UserStatus.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Address?>()) {
      return (data != null ? _i2.Address.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Authentication?>()) {
      return (data != null ? _i3.Authentication.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i4.BizSize?>()) {
      return (data != null ? _i4.BizSize.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Blocked?>()) {
      return (data != null ? _i5.Blocked.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Brand?>()) {
      return (data != null ? _i6.Brand.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Catagory?>()) {
      return (data != null ? _i7.Catagory.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Employe?>()) {
      return (data != null ? _i8.Employe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Example?>()) {
      return (data != null ? _i9.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Follow?>()) {
      return (data != null ? _i10.Follow.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.GiftCard?>()) {
      return (data != null ? _i11.GiftCard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.EndpointException?>()) {
      return (data != null ? _i12.EndpointException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i13.InActiveProduct?>()) {
      return (data != null ? _i13.InActiveProduct.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i14.Item?>()) {
      return (data != null ? _i14.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i15.Like?>()) {
      return (data != null ? _i15.Like.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i16.Notification?>()) {
      return (data != null ? _i16.Notification.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i17.NotificationType?>()) {
      return (data != null ? _i17.NotificationType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.Order?>()) {
      return (data != null ? _i18.Order.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i19.OrderStatus?>()) {
      return (data != null ? _i19.OrderStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.Policy?>()) {
      return (data != null ? _i20.Policy.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.Product?>()) {
      return (data != null ? _i21.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i22.Report?>()) {
      return (data != null ? _i22.Report.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.ReportStatus?>()) {
      return (data != null ? _i23.ReportStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.Sale?>()) {
      return (data != null ? _i24.Sale.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.Shop?>()) {
      return (data != null ? _i25.Shop.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i26.ShopAction?>()) {
      return (data != null ? _i26.ShopAction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i27.ShopActivity?>()) {
      return (data != null ? _i27.ShopActivity.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i28.ShopPreference?>()) {
      return (data != null ? _i28.ShopPreference.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i29.ShopRate?>()) {
      return (data != null ? _i29.ShopRate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i30.ShopReview?>()) {
      return (data != null ? _i30.ShopReview.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i31.ShopRole?>()) {
      return (data != null ? _i31.ShopRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.StartStatus?>()) {
      return (data != null ? _i32.StartStatus.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i33.BackgroundInfo?>()) {
      return (data != null ? _i33.BackgroundInfo.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i34.UserInterest?>()) {
      return (data != null ? _i34.UserInterest.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i35.UserStatus?>()) {
      return (data != null ? _i35.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i36.Catagory>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i36.Catagory>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i36.Employe>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i36.Employe>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i37.Catagory>) {
      return (data as List).map((e) => deserialize<_i37.Catagory>(e)).toList()
          as dynamic;
    }
    if (t == List<_i38.Brand>) {
      return (data as List).map((e) => deserialize<_i38.Brand>(e)).toList()
          as dynamic;
    }
    if (t == List<_i39.Shop>) {
      return (data as List).map((e) => deserialize<_i39.Shop>(e)).toList()
          as dynamic;
    }
    try {
      return _i40.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i40.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Address) {
      return 'Address';
    }
    if (data is _i3.Authentication) {
      return 'Authentication';
    }
    if (data is _i4.BizSize) {
      return 'BizSize';
    }
    if (data is _i5.Blocked) {
      return 'Blocked';
    }
    if (data is _i6.Brand) {
      return 'Brand';
    }
    if (data is _i7.Catagory) {
      return 'Catagory';
    }
    if (data is _i8.Employe) {
      return 'Employe';
    }
    if (data is _i9.Example) {
      return 'Example';
    }
    if (data is _i10.Follow) {
      return 'Follow';
    }
    if (data is _i11.GiftCard) {
      return 'GiftCard';
    }
    if (data is _i12.EndpointException) {
      return 'EndpointException';
    }
    if (data is _i13.InActiveProduct) {
      return 'InActiveProduct';
    }
    if (data is _i14.Item) {
      return 'Item';
    }
    if (data is _i15.Like) {
      return 'Like';
    }
    if (data is _i16.Notification) {
      return 'Notification';
    }
    if (data is _i17.NotificationType) {
      return 'NotificationType';
    }
    if (data is _i18.Order) {
      return 'Order';
    }
    if (data is _i19.OrderStatus) {
      return 'OrderStatus';
    }
    if (data is _i20.Policy) {
      return 'Policy';
    }
    if (data is _i21.Product) {
      return 'Product';
    }
    if (data is _i22.Report) {
      return 'Report';
    }
    if (data is _i23.ReportStatus) {
      return 'ReportStatus';
    }
    if (data is _i24.Sale) {
      return 'Sale';
    }
    if (data is _i25.Shop) {
      return 'Shop';
    }
    if (data is _i26.ShopAction) {
      return 'ShopAction';
    }
    if (data is _i27.ShopActivity) {
      return 'ShopActivity';
    }
    if (data is _i28.ShopPreference) {
      return 'ShopPreference';
    }
    if (data is _i29.ShopRate) {
      return 'ShopRate';
    }
    if (data is _i30.ShopReview) {
      return 'ShopReview';
    }
    if (data is _i31.ShopRole) {
      return 'ShopRole';
    }
    if (data is _i32.StartStatus) {
      return 'StartStatus';
    }
    if (data is _i33.BackgroundInfo) {
      return 'BackgroundInfo';
    }
    if (data is _i34.UserInterest) {
      return 'UserInterest';
    }
    if (data is _i35.UserStatus) {
      return 'UserStatus';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i40.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i2.Address>(data['data']);
    }
    if (data['className'] == 'Authentication') {
      return deserialize<_i3.Authentication>(data['data']);
    }
    if (data['className'] == 'BizSize') {
      return deserialize<_i4.BizSize>(data['data']);
    }
    if (data['className'] == 'Blocked') {
      return deserialize<_i5.Blocked>(data['data']);
    }
    if (data['className'] == 'Brand') {
      return deserialize<_i6.Brand>(data['data']);
    }
    if (data['className'] == 'Catagory') {
      return deserialize<_i7.Catagory>(data['data']);
    }
    if (data['className'] == 'Employe') {
      return deserialize<_i8.Employe>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i9.Example>(data['data']);
    }
    if (data['className'] == 'Follow') {
      return deserialize<_i10.Follow>(data['data']);
    }
    if (data['className'] == 'GiftCard') {
      return deserialize<_i11.GiftCard>(data['data']);
    }
    if (data['className'] == 'EndpointException') {
      return deserialize<_i12.EndpointException>(data['data']);
    }
    if (data['className'] == 'InActiveProduct') {
      return deserialize<_i13.InActiveProduct>(data['data']);
    }
    if (data['className'] == 'Item') {
      return deserialize<_i14.Item>(data['data']);
    }
    if (data['className'] == 'Like') {
      return deserialize<_i15.Like>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i16.Notification>(data['data']);
    }
    if (data['className'] == 'NotificationType') {
      return deserialize<_i17.NotificationType>(data['data']);
    }
    if (data['className'] == 'Order') {
      return deserialize<_i18.Order>(data['data']);
    }
    if (data['className'] == 'OrderStatus') {
      return deserialize<_i19.OrderStatus>(data['data']);
    }
    if (data['className'] == 'Policy') {
      return deserialize<_i20.Policy>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i21.Product>(data['data']);
    }
    if (data['className'] == 'Report') {
      return deserialize<_i22.Report>(data['data']);
    }
    if (data['className'] == 'ReportStatus') {
      return deserialize<_i23.ReportStatus>(data['data']);
    }
    if (data['className'] == 'Sale') {
      return deserialize<_i24.Sale>(data['data']);
    }
    if (data['className'] == 'Shop') {
      return deserialize<_i25.Shop>(data['data']);
    }
    if (data['className'] == 'ShopAction') {
      return deserialize<_i26.ShopAction>(data['data']);
    }
    if (data['className'] == 'ShopActivity') {
      return deserialize<_i27.ShopActivity>(data['data']);
    }
    if (data['className'] == 'ShopPreference') {
      return deserialize<_i28.ShopPreference>(data['data']);
    }
    if (data['className'] == 'ShopRate') {
      return deserialize<_i29.ShopRate>(data['data']);
    }
    if (data['className'] == 'ShopReview') {
      return deserialize<_i30.ShopReview>(data['data']);
    }
    if (data['className'] == 'ShopRole') {
      return deserialize<_i31.ShopRole>(data['data']);
    }
    if (data['className'] == 'StartStatus') {
      return deserialize<_i32.StartStatus>(data['data']);
    }
    if (data['className'] == 'BackgroundInfo') {
      return deserialize<_i33.BackgroundInfo>(data['data']);
    }
    if (data['className'] == 'UserInterest') {
      return deserialize<_i34.UserInterest>(data['data']);
    }
    if (data['className'] == 'UserStatus') {
      return deserialize<_i35.UserStatus>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
