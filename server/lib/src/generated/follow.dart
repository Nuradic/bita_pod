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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Follow extends _i1.TableRow {
  Follow._({
    int? id,
    required this.shopId,
    this.shop,
    required this.userId,
    this.user,
    required this.createdAt,
  }) : super(id);

  factory Follow({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required int userId,
    _i3.UserInfo? user,
    required DateTime createdAt,
  }) = _FollowImpl;

  factory Follow.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Follow(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = FollowTable();

  static const db = FollowRepository._();

  int shopId;

  _i2.Shop? shop;

  int userId;

  _i3.UserInfo? user;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  Follow copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'shopId': shopId,
      'userId': userId,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      'createdAt': createdAt.toJson(),
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
      case 'shopId':
        shopId = value;
        return;
      case 'userId':
        userId = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Follow>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FollowInclude? include,
  }) async {
    return session.db.find<Follow>(
      where: where != null ? where(Follow.t) : null,
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
  static Future<Follow?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    FollowInclude? include,
  }) async {
    return session.db.findSingleRow<Follow>(
      where: where != null ? where(Follow.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Follow?> findById(
    _i1.Session session,
    int id, {
    FollowInclude? include,
  }) async {
    return session.db.findById<Follow>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FollowTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Follow>(
      where: where(Follow.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Follow row, {
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
    Follow row, {
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
    Follow row, {
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
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Follow>(
      where: where != null ? where(Follow.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static FollowInclude include({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
  }) {
    return FollowInclude._(
      shop: shop,
      user: user,
    );
  }

  static FollowIncludeList includeList({
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FollowTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FollowTable>? orderByList,
    FollowInclude? include,
  }) {
    return FollowIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Follow.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Follow.t),
      include: include,
    );
  }
}

class _Undefined {}

class _FollowImpl extends Follow {
  _FollowImpl({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required int userId,
    _i3.UserInfo? user,
    required DateTime createdAt,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
          createdAt: createdAt,
        );

  @override
  Follow copyWith({
    Object? id = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    int? userId,
    Object? user = _Undefined,
    DateTime? createdAt,
  }) {
    return Follow(
      id: id is int? ? id : this.id,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class FollowTable extends _i1.Table {
  FollowTable({super.tableRelation}) : super(tableName: 'follow') {
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  late final _i1.ColumnDateTime createdAt;

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Follow.t.shopId,
      foreignField: _i2.Shop.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ShopTable(tableRelation: foreignTableRelation),
    );
    return _shop!;
  }

  _i3.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Follow.t.userId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        shopId,
        userId,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'shop') {
      return shop;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use FollowTable.t instead.')
FollowTable tFollow = FollowTable();

class FollowInclude extends _i1.IncludeObject {
  FollowInclude._({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
  }) {
    _shop = shop;
    _user = user;
  }

  _i2.ShopInclude? _shop;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'shop': _shop,
        'user': _user,
      };

  @override
  _i1.Table get table => Follow.t;
}

class FollowIncludeList extends _i1.IncludeList {
  FollowIncludeList._({
    _i1.WhereExpressionBuilder<FollowTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Follow.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Follow.t;
}

class FollowRepository {
  const FollowRepository._();

  final attachRow = const FollowAttachRowRepository._();

  Future<List<Follow>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<FollowTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FollowTable>? orderByList,
    _i1.Transaction? transaction,
    FollowInclude? include,
  }) async {
    return session.dbNext.find<Follow>(
      where: where?.call(Follow.t),
      orderBy: orderBy?.call(Follow.t),
      orderByList: orderByList?.call(Follow.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Follow?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? offset,
    _i1.OrderByBuilder<FollowTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<FollowTable>? orderByList,
    _i1.Transaction? transaction,
    FollowInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Follow>(
      where: where?.call(Follow.t),
      orderBy: orderBy?.call(Follow.t),
      orderByList: orderByList?.call(Follow.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Follow?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    FollowInclude? include,
  }) async {
    return session.dbNext.findById<Follow>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Follow>> insert(
    _i1.Session session,
    List<Follow> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Follow>(
      rows,
      transaction: transaction,
    );
  }

  Future<Follow> insertRow(
    _i1.Session session,
    Follow row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Follow>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Follow>> update(
    _i1.Session session,
    List<Follow> rows, {
    _i1.ColumnSelections<FollowTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Follow>(
      rows,
      columns: columns?.call(Follow.t),
      transaction: transaction,
    );
  }

  Future<Follow> updateRow(
    _i1.Session session,
    Follow row, {
    _i1.ColumnSelections<FollowTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Follow>(
      row,
      columns: columns?.call(Follow.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Follow> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Follow>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Follow row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Follow>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<FollowTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Follow>(
      where: where(Follow.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<FollowTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Follow>(
      where: where?.call(Follow.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class FollowAttachRowRepository {
  const FollowAttachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    Follow follow,
    _i2.Shop shop,
  ) async {
    if (follow.id == null) {
      throw ArgumentError.notNull('follow.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $follow = follow.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Follow>(
      $follow,
      columns: [Follow.t.shopId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Follow follow,
    _i3.UserInfo user,
  ) async {
    if (follow.id == null) {
      throw ArgumentError.notNull('follow.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $follow = follow.copyWith(userId: user.id);
    await session.dbNext.updateRow<Follow>(
      $follow,
      columns: [Follow.t.userId],
    );
  }
}
