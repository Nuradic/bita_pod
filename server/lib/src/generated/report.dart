/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;

abstract class Report extends _i1.TableRow {
  Report._({
    int? id,
    required this.status,
    this.shopId,
    this.shop,
    this.reporterId,
    this.reporter,
    this.phoneNum,
    this.email,
    this.violatorId,
    this.violator,
  }) : super(id);

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

  static final t = ReportTable();

  static const db = ReportRepository._();

  _i2.ReportStatus status;

  int? shopId;

  _i2.Shop? shop;

  int? reporterId;

  _i3.UserInfo? reporter;

  String? phoneNum;

  String? email;

  int? violatorId;

  _i3.UserInfo? violator;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'status': status,
      'shopId': shopId,
      'reporterId': reporterId,
      'phoneNum': phoneNum,
      'email': email,
      'violatorId': violatorId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'status': status.toJson(),
      if (shopId != null) 'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      if (reporterId != null) 'reporterId': reporterId,
      if (reporter != null) 'reporter': reporter?.allToJson(),
      if (phoneNum != null) 'phoneNum': phoneNum,
      if (email != null) 'email': email,
      if (violatorId != null) 'violatorId': violatorId,
      if (violator != null) 'violator': violator?.allToJson(),
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
      case 'status':
        status = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      case 'reporterId':
        reporterId = value;
        return;
      case 'phoneNum':
        phoneNum = value;
        return;
      case 'email':
        email = value;
        return;
      case 'violatorId':
        violatorId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Report>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ReportInclude? include,
  }) async {
    return session.db.find<Report>(
      where: where != null ? where(Report.t) : null,
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
  static Future<Report?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ReportInclude? include,
  }) async {
    return session.db.findSingleRow<Report>(
      where: where != null ? where(Report.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Report?> findById(
    _i1.Session session,
    int id, {
    ReportInclude? include,
  }) async {
    return session.db.findById<Report>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Report>(
      where: where(Report.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Report row, {
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
    Report row, {
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
    Report row, {
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
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Report>(
      where: where != null ? where(Report.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ReportInclude include({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? reporter,
    _i3.UserInfoInclude? violator,
  }) {
    return ReportInclude._(
      shop: shop,
      reporter: reporter,
      violator: violator,
    );
  }

  static ReportIncludeList includeList({
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReportTable>? orderByList,
    ReportInclude? include,
  }) {
    return ReportIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Report.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Report.t),
      include: include,
    );
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

class ReportTable extends _i1.Table {
  ReportTable({super.tableRelation}) : super(tableName: 'report') {
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    reporterId = _i1.ColumnInt(
      'reporterId',
      this,
    );
    phoneNum = _i1.ColumnString(
      'phoneNum',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    violatorId = _i1.ColumnInt(
      'violatorId',
      this,
    );
  }

  late final _i1.ColumnEnum<_i2.ReportStatus> status;

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  late final _i1.ColumnInt reporterId;

  _i3.UserInfoTable? _reporter;

  late final _i1.ColumnString phoneNum;

  late final _i1.ColumnString email;

  late final _i1.ColumnInt violatorId;

  _i3.UserInfoTable? _violator;

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Report.t.shopId,
      foreignField: _i2.Shop.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ShopTable(tableRelation: foreignTableRelation),
    );
    return _shop!;
  }

  _i3.UserInfoTable get reporter {
    if (_reporter != null) return _reporter!;
    _reporter = _i1.createRelationTable(
      relationFieldName: 'reporter',
      field: Report.t.reporterId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _reporter!;
  }

  _i3.UserInfoTable get violator {
    if (_violator != null) return _violator!;
    _violator = _i1.createRelationTable(
      relationFieldName: 'violator',
      field: Report.t.violatorId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _violator!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        status,
        shopId,
        reporterId,
        phoneNum,
        email,
        violatorId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'shop') {
      return shop;
    }
    if (relationField == 'reporter') {
      return reporter;
    }
    if (relationField == 'violator') {
      return violator;
    }
    return null;
  }
}

@Deprecated('Use ReportTable.t instead.')
ReportTable tReport = ReportTable();

class ReportInclude extends _i1.IncludeObject {
  ReportInclude._({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? reporter,
    _i3.UserInfoInclude? violator,
  }) {
    _shop = shop;
    _reporter = reporter;
    _violator = violator;
  }

  _i2.ShopInclude? _shop;

  _i3.UserInfoInclude? _reporter;

  _i3.UserInfoInclude? _violator;

  @override
  Map<String, _i1.Include?> get includes => {
        'shop': _shop,
        'reporter': _reporter,
        'violator': _violator,
      };

  @override
  _i1.Table get table => Report.t;
}

class ReportIncludeList extends _i1.IncludeList {
  ReportIncludeList._({
    _i1.WhereExpressionBuilder<ReportTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Report.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Report.t;
}

class ReportRepository {
  const ReportRepository._();

  final attachRow = const ReportAttachRowRepository._();

  final detachRow = const ReportDetachRowRepository._();

  Future<List<Report>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReportTable>? orderByList,
    _i1.Transaction? transaction,
    ReportInclude? include,
  }) async {
    return session.dbNext.find<Report>(
      where: where?.call(Report.t),
      orderBy: orderBy?.call(Report.t),
      orderByList: orderByList?.call(Report.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Report?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReportTable>? orderByList,
    _i1.Transaction? transaction,
    ReportInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Report>(
      where: where?.call(Report.t),
      orderBy: orderBy?.call(Report.t),
      orderByList: orderByList?.call(Report.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Report?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ReportInclude? include,
  }) async {
    return session.dbNext.findById<Report>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Report>> insert(
    _i1.Session session,
    List<Report> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Report>(
      rows,
      transaction: transaction,
    );
  }

  Future<Report> insertRow(
    _i1.Session session,
    Report row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Report>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Report>> update(
    _i1.Session session,
    List<Report> rows, {
    _i1.ColumnSelections<ReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Report>(
      rows,
      columns: columns?.call(Report.t),
      transaction: transaction,
    );
  }

  Future<Report> updateRow(
    _i1.Session session,
    Report row, {
    _i1.ColumnSelections<ReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Report>(
      row,
      columns: columns?.call(Report.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Report> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Report>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Report row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Report>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Report>(
      where: where(Report.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReportTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Report>(
      where: where?.call(Report.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ReportAttachRowRepository {
  const ReportAttachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    Report report,
    _i2.Shop shop,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $report = report.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.shopId],
    );
  }

  Future<void> reporter(
    _i1.Session session,
    Report report,
    _i3.UserInfo reporter,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }
    if (reporter.id == null) {
      throw ArgumentError.notNull('reporter.id');
    }

    var $report = report.copyWith(reporterId: reporter.id);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.reporterId],
    );
  }

  Future<void> violator(
    _i1.Session session,
    Report report,
    _i3.UserInfo violator,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }
    if (violator.id == null) {
      throw ArgumentError.notNull('violator.id');
    }

    var $report = report.copyWith(violatorId: violator.id);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.violatorId],
    );
  }
}

class ReportDetachRowRepository {
  const ReportDetachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    Report report,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }

    var $report = report.copyWith(shopId: null);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.shopId],
    );
  }

  Future<void> reporter(
    _i1.Session session,
    Report report,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }

    var $report = report.copyWith(reporterId: null);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.reporterId],
    );
  }

  Future<void> violator(
    _i1.Session session,
    Report report,
  ) async {
    if (report.id == null) {
      throw ArgumentError.notNull('report.id');
    }

    var $report = report.copyWith(violatorId: null);
    await session.dbNext.updateRow<Report>(
      $report,
      columns: [Report.t.violatorId],
    );
  }
}
