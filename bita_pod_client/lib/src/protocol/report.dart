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

abstract class Report extends _i1.SerializableEntity {
  Report._({
    this.id,
    required this.status,
    this.shopId,
    this.shop,
    this.reporterId,
    this.reporter,
    this.phoneNum,
    this.email,
    this.violatorId,
    this.violator,
  });

  factory Report({
    int? id,
    required _i2.ReportStatus status,
    int? shopId,
    _i2.Shop? shop,
    int? reporterId,
    _i3.UserInfo? reporter,
    String? phoneNum,
    String? email,
    int? violatorId,
    _i3.UserInfo? violator,
  }) = _ReportImpl;

  factory Report.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Report(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      status: serializationManager
          .deserialize<_i2.ReportStatus>(jsonSerialization['status']),
      shopId:
          serializationManager.deserialize<int?>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      reporterId: serializationManager
          .deserialize<int?>(jsonSerialization['reporterId']),
      reporter: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['reporter']),
      phoneNum: serializationManager
          .deserialize<String?>(jsonSerialization['phoneNum']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      violatorId: serializationManager
          .deserialize<int?>(jsonSerialization['violatorId']),
      violator: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['violator']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.ReportStatus status;

  int? shopId;

  _i2.Shop? shop;

  int? reporterId;

  _i3.UserInfo? reporter;

  String? phoneNum;

  String? email;

  int? violatorId;

  _i3.UserInfo? violator;

  Report copyWith({
    int? id,
    _i2.ReportStatus? status,
    int? shopId,
    _i2.Shop? shop,
    int? reporterId,
    _i3.UserInfo? reporter,
    String? phoneNum,
    String? email,
    int? violatorId,
    _i3.UserInfo? violator,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'status': status.toJson(),
      if (shopId != null) 'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (reporterId != null) 'reporterId': reporterId,
      if (reporter != null) 'reporter': reporter?.toJson(),
      if (phoneNum != null) 'phoneNum': phoneNum,
      if (email != null) 'email': email,
      if (violatorId != null) 'violatorId': violatorId,
      if (violator != null) 'violator': violator?.toJson(),
    };
  }
}

class _Undefined {}

class _ReportImpl extends Report {
  _ReportImpl({
    int? id,
    required _i2.ReportStatus status,
    int? shopId,
    _i2.Shop? shop,
    int? reporterId,
    _i3.UserInfo? reporter,
    String? phoneNum,
    String? email,
    int? violatorId,
    _i3.UserInfo? violator,
  }) : super._(
          id: id,
          status: status,
          shopId: shopId,
          shop: shop,
          reporterId: reporterId,
          reporter: reporter,
          phoneNum: phoneNum,
          email: email,
          violatorId: violatorId,
          violator: violator,
        );

  @override
  Report copyWith({
    Object? id = _Undefined,
    _i2.ReportStatus? status,
    Object? shopId = _Undefined,
    Object? shop = _Undefined,
    Object? reporterId = _Undefined,
    Object? reporter = _Undefined,
    Object? phoneNum = _Undefined,
    Object? email = _Undefined,
    Object? violatorId = _Undefined,
    Object? violator = _Undefined,
  }) {
    return Report(
      id: id is int? ? id : this.id,
      status: status ?? this.status,
      shopId: shopId is int? ? shopId : this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      reporterId: reporterId is int? ? reporterId : this.reporterId,
      reporter:
          reporter is _i3.UserInfo? ? reporter : this.reporter?.copyWith(),
      phoneNum: phoneNum is String? ? phoneNum : this.phoneNum,
      email: email is String? ? email : this.email,
      violatorId: violatorId is int? ? violatorId : this.violatorId,
      violator:
          violator is _i3.UserInfo? ? violator : this.violator?.copyWith(),
    );
  }
}
