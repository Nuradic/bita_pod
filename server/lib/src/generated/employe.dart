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

abstract class Employe extends _i1.TableRow {
  Employe._({
    int? id,
    required this.userId,
    this.user,
    required this.shopId,
    this.shop,
  }) : super(id);

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

  static final t = EmployeTable();

  static const db = EmployeRepository._();

  int userId;

  _i2.UserInfo? user;

  int shopId;

  _i3.Shop? shop;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'shopId': shopId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
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
      case 'userId':
        userId = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Employe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EmployeInclude? include,
  }) async {
    return session.db.find<Employe>(
      where: where != null ? where(Employe.t) : null,
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
  static Future<Employe?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    EmployeInclude? include,
  }) async {
    return session.db.findSingleRow<Employe>(
      where: where != null ? where(Employe.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Employe?> findById(
    _i1.Session session,
    int id, {
    EmployeInclude? include,
  }) async {
    return session.db.findById<Employe>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmployeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Employe>(
      where: where(Employe.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Employe row, {
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
    Employe row, {
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
    Employe row, {
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
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Employe>(
      where: where != null ? where(Employe.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EmployeInclude include({
    _i2.UserInfoInclude? user,
    _i3.ShopInclude? shop,
  }) {
    return EmployeInclude._(
      user: user,
      shop: shop,
    );
  }

  static EmployeIncludeList includeList({
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmployeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeTable>? orderByList,
    EmployeInclude? include,
  }) {
    return EmployeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Employe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Employe.t),
      include: include,
    );
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

class EmployeTable extends _i1.Table {
  EmployeTable({super.tableRelation}) : super(tableName: 'employe') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  late final _i1.ColumnInt shopId;

  _i3.ShopTable? _shop;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Employe.t.userId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i3.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Employe.t.shopId,
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
        userId,
        shopId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'shop') {
      return shop;
    }
    return null;
  }
}

@Deprecated('Use EmployeTable.t instead.')
EmployeTable tEmploye = EmployeTable();

class EmployeInclude extends _i1.IncludeObject {
  EmployeInclude._({
    _i2.UserInfoInclude? user,
    _i3.ShopInclude? shop,
  }) {
    _user = user;
    _shop = shop;
  }

  _i2.UserInfoInclude? _user;

  _i3.ShopInclude? _shop;

  @override
  Map<String, _i1.Include?> get includes => {
        'user': _user,
        'shop': _shop,
      };

  @override
  _i1.Table get table => Employe.t;
}

class EmployeIncludeList extends _i1.IncludeList {
  EmployeIncludeList._({
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Employe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Employe.t;
}

class EmployeRepository {
  const EmployeRepository._();

  final attachRow = const EmployeAttachRowRepository._();

  Future<List<Employe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EmployeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeTable>? orderByList,
    _i1.Transaction? transaction,
    EmployeInclude? include,
  }) async {
    return session.dbNext.find<Employe>(
      where: where?.call(Employe.t),
      orderBy: orderBy?.call(Employe.t),
      orderByList: orderByList?.call(Employe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Employe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? offset,
    _i1.OrderByBuilder<EmployeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EmployeTable>? orderByList,
    _i1.Transaction? transaction,
    EmployeInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Employe>(
      where: where?.call(Employe.t),
      orderBy: orderBy?.call(Employe.t),
      orderByList: orderByList?.call(Employe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Employe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EmployeInclude? include,
  }) async {
    return session.dbNext.findById<Employe>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Employe>> insert(
    _i1.Session session,
    List<Employe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Employe>(
      rows,
      transaction: transaction,
    );
  }

  Future<Employe> insertRow(
    _i1.Session session,
    Employe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Employe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Employe>> update(
    _i1.Session session,
    List<Employe> rows, {
    _i1.ColumnSelections<EmployeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Employe>(
      rows,
      columns: columns?.call(Employe.t),
      transaction: transaction,
    );
  }

  Future<Employe> updateRow(
    _i1.Session session,
    Employe row, {
    _i1.ColumnSelections<EmployeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Employe>(
      row,
      columns: columns?.call(Employe.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Employe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Employe>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Employe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Employe>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EmployeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Employe>(
      where: where(Employe.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EmployeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Employe>(
      where: where?.call(Employe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EmployeAttachRowRepository {
  const EmployeAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    Employe employe,
    _i2.UserInfo user,
  ) async {
    if (employe.id == null) {
      throw ArgumentError.notNull('employe.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $employe = employe.copyWith(userId: user.id);
    await session.dbNext.updateRow<Employe>(
      $employe,
      columns: [Employe.t.userId],
    );
  }

  Future<void> shop(
    _i1.Session session,
    Employe employe,
    _i3.Shop shop,
  ) async {
    if (employe.id == null) {
      throw ArgumentError.notNull('employe.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $employe = employe.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Employe>(
      $employe,
      columns: [Employe.t.shopId],
    );
  }
}
