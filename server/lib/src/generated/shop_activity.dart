/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;
import 'protocol.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class ShopActivity extends _i1.TableRow {
  ShopActivity._({
    int? id,
    this.employeId,
    this.employe,
    required this.shopId,
    this.shop,
    this.desc,
    this.action,
    required this.timestamp,
  }) : super(id);

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

  static final t = ShopActivityTable();

  static const db = ShopActivityRepository._();

  int? employeId;

  _i2.UserInfo? employe;

  int shopId;

  _i3.Shop? shop;

  String? desc;

  _i3.ShopAction? action;

  DateTime timestamp;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'employeId': employeId,
      'shopId': shopId,
      'desc': desc,
      'action': action,
      'timestamp': timestamp,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (employeId != null) 'employeId': employeId,
      if (employe != null) 'employe': employe?.allToJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      if (desc != null) 'desc': desc,
      if (action != null) 'action': action?.toJson(),
      'timestamp': timestamp.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'employeId':
        employeId = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      case 'desc':
        desc = value;
        return;
      case 'action':
        action = value;
        return;
      case 'timestamp':
        timestamp = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ShopActivity>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopActivityInclude? include,
  }) async {
    return session.db.find<ShopActivity>(
      where: where != null ? where(ShopActivity.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<ShopActivity?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopActivityInclude? include,
  }) async {
    return session.db.findSingleRow<ShopActivity>(
      where: where != null ? where(ShopActivity.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ShopActivity?> findById(
    _i1.Session session,
    int id, {
    ShopActivityInclude? include,
  }) async {
    return session.db.findById<ShopActivity>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopActivityTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ShopActivity>(
      where: where(ShopActivity.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ShopActivity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    ShopActivity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    ShopActivity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ShopActivity>(
      where: where != null ? where(ShopActivity.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShopActivityInclude include({
    _i2.UserInfoInclude? employe,
    _i3.ShopInclude? shop,
  }) {
    return ShopActivityInclude._(
      employe: employe,
      shop: shop,
    );
  }

  static ShopActivityIncludeList includeList({
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopActivityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopActivityTable>? orderByList,
    ShopActivityInclude? include,
  }) {
    return ShopActivityIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopActivity.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ShopActivity.t),
      include: include,
    );
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

class ShopActivityTable extends _i1.Table {
  ShopActivityTable({super.tableRelation}) : super(tableName: 'shop_activity') {
    employeId = _i1.ColumnInt(
      'employeId',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    desc = _i1.ColumnString(
      'desc',
      this,
    );
    action = _i1.ColumnEnum(
      'action',
      this,
      _i1.EnumSerialization.byName,
    );
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
  }

  late final _i1.ColumnInt employeId;

  _i2.UserInfoTable? _employe;

  late final _i1.ColumnInt shopId;

  _i3.ShopTable? _shop;

  late final _i1.ColumnString desc;

  late final _i1.ColumnEnum<_i3.ShopAction> action;

  late final _i1.ColumnDateTime timestamp;

  _i2.UserInfoTable get employe {
    if (_employe != null) return _employe!;
    _employe = _i1.createRelationTable(
      relationFieldName: 'employe',
      field: ShopActivity.t.employeId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _employe!;
  }

  _i3.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: ShopActivity.t.shopId,
      foreignField: _i3.Shop.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.ShopTable(tableRelation: foreignTableRelation),
    );
    return _shop!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        employeId,
        shopId,
        desc,
        action,
        timestamp,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'employe') {
      return employe;
    }
    if (relationField == 'shop') {
      return shop;
    }
    return null;
  }
}

@Deprecated('Use ShopActivityTable.t instead.')
ShopActivityTable tShopActivity = ShopActivityTable();

class ShopActivityInclude extends _i1.IncludeObject {
  ShopActivityInclude._({
    _i2.UserInfoInclude? employe,
    _i3.ShopInclude? shop,
  }) {
    _employe = employe;
    _shop = shop;
  }

  _i2.UserInfoInclude? _employe;

  _i3.ShopInclude? _shop;

  @override
  Map<String, _i1.Include?> get includes => {
        'employe': _employe,
        'shop': _shop,
      };

  @override
  _i1.Table get table => ShopActivity.t;
}

class ShopActivityIncludeList extends _i1.IncludeList {
  ShopActivityIncludeList._({
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopActivity.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ShopActivity.t;
}

class ShopActivityRepository {
  const ShopActivityRepository._();

  final attachRow = const ShopActivityAttachRowRepository._();

  final detachRow = const ShopActivityDetachRowRepository._();

  Future<List<ShopActivity>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopActivityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopActivityTable>? orderByList,
    _i1.Transaction? transaction,
    ShopActivityInclude? include,
  }) async {
    return session.dbNext.find<ShopActivity>(
      where: where?.call(ShopActivity.t),
      orderBy: orderBy?.call(ShopActivity.t),
      orderByList: orderByList?.call(ShopActivity.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopActivity?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShopActivityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopActivityTable>? orderByList,
    _i1.Transaction? transaction,
    ShopActivityInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ShopActivity>(
      where: where?.call(ShopActivity.t),
      orderBy: orderBy?.call(ShopActivity.t),
      orderByList: orderByList?.call(ShopActivity.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopActivity?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShopActivityInclude? include,
  }) async {
    return session.dbNext.findById<ShopActivity>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ShopActivity>> insert(
    _i1.Session session,
    List<ShopActivity> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ShopActivity>(
      rows,
      transaction: transaction,
    );
  }

  Future<ShopActivity> insertRow(
    _i1.Session session,
    ShopActivity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ShopActivity>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ShopActivity>> update(
    _i1.Session session,
    List<ShopActivity> rows, {
    _i1.ColumnSelections<ShopActivityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ShopActivity>(
      rows,
      columns: columns?.call(ShopActivity.t),
      transaction: transaction,
    );
  }

  Future<ShopActivity> updateRow(
    _i1.Session session,
    ShopActivity row, {
    _i1.ColumnSelections<ShopActivityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ShopActivity>(
      row,
      columns: columns?.call(ShopActivity.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ShopActivity> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ShopActivity>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ShopActivity row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ShopActivity>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopActivityTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ShopActivity>(
      where: where(ShopActivity.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopActivityTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ShopActivity>(
      where: where?.call(ShopActivity.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShopActivityAttachRowRepository {
  const ShopActivityAttachRowRepository._();

  Future<void> employe(
    _i1.Session session,
    ShopActivity shopActivity,
    _i2.UserInfo employe,
  ) async {
    if (shopActivity.id == null) {
      throw ArgumentError.notNull('shopActivity.id');
    }
    if (employe.id == null) {
      throw ArgumentError.notNull('employe.id');
    }

    var $shopActivity = shopActivity.copyWith(employeId: employe.id);
    await session.dbNext.updateRow<ShopActivity>(
      $shopActivity,
      columns: [ShopActivity.t.employeId],
    );
  }

  Future<void> shop(
    _i1.Session session,
    ShopActivity shopActivity,
    _i3.Shop shop,
  ) async {
    if (shopActivity.id == null) {
      throw ArgumentError.notNull('shopActivity.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $shopActivity = shopActivity.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<ShopActivity>(
      $shopActivity,
      columns: [ShopActivity.t.shopId],
    );
  }
}

class ShopActivityDetachRowRepository {
  const ShopActivityDetachRowRepository._();

  Future<void> employe(
    _i1.Session session,
    ShopActivity shopactivity,
  ) async {
    if (shopactivity.id == null) {
      throw ArgumentError.notNull('shopactivity.id');
    }

    var $shopactivity = shopactivity.copyWith(employeId: null);
    await session.dbNext.updateRow<ShopActivity>(
      $shopactivity,
      columns: [ShopActivity.t.employeId],
    );
  }
}
