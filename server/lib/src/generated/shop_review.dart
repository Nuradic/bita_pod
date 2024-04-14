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

abstract class ShopReview extends _i1.TableRow {
  ShopReview._({
    int? id,
    this.userId,
    this.user,
    required this.shopId,
    this.shop,
    this.content,
    required this.rate,
  }) : super(id);

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

  static final t = ShopReviewTable();

  static const db = ShopReviewRepository._();

  int? userId;

  _i2.UserInfo? user;

  int shopId;

  _i3.Shop? shop;

  String? content;

  _i3.ShopRate rate;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'userId': userId,
      'shopId': shopId,
      'content': content,
      'rate': rate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      if (content != null) 'content': content,
      'rate': rate.toJson(),
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
      case 'content':
        content = value;
        return;
      case 'rate':
        rate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ShopReview>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopReviewInclude? include,
  }) async {
    return session.db.find<ShopReview>(
      where: where != null ? where(ShopReview.t) : null,
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
  static Future<ShopReview?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopReviewInclude? include,
  }) async {
    return session.db.findSingleRow<ShopReview>(
      where: where != null ? where(ShopReview.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ShopReview?> findById(
    _i1.Session session,
    int id, {
    ShopReviewInclude? include,
  }) async {
    return session.db.findById<ShopReview>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopReviewTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ShopReview>(
      where: where(ShopReview.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ShopReview row, {
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
    ShopReview row, {
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
    ShopReview row, {
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
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ShopReview>(
      where: where != null ? where(ShopReview.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShopReviewInclude include({
    _i2.UserInfoInclude? user,
    _i3.ShopInclude? shop,
  }) {
    return ShopReviewInclude._(
      user: user,
      shop: shop,
    );
  }

  static ShopReviewIncludeList includeList({
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopReviewTable>? orderByList,
    ShopReviewInclude? include,
  }) {
    return ShopReviewIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopReview.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ShopReview.t),
      include: include,
    );
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

class ShopReviewTable extends _i1.Table {
  ShopReviewTable({super.tableRelation}) : super(tableName: 'shop_review') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    rate = _i1.ColumnEnum(
      'rate',
      this,
      _i1.EnumSerialization.byIndex,
    );
  }

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  late final _i1.ColumnInt shopId;

  _i3.ShopTable? _shop;

  late final _i1.ColumnString content;

  late final _i1.ColumnEnum<_i3.ShopRate> rate;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: ShopReview.t.userId,
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
      field: ShopReview.t.shopId,
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
        content,
        rate,
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

@Deprecated('Use ShopReviewTable.t instead.')
ShopReviewTable tShopReview = ShopReviewTable();

class ShopReviewInclude extends _i1.IncludeObject {
  ShopReviewInclude._({
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
  _i1.Table get table => ShopReview.t;
}

class ShopReviewIncludeList extends _i1.IncludeList {
  ShopReviewIncludeList._({
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopReview.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ShopReview.t;
}

class ShopReviewRepository {
  const ShopReviewRepository._();

  final attachRow = const ShopReviewAttachRowRepository._();

  final detachRow = const ShopReviewDetachRowRepository._();

  Future<List<ShopReview>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopReviewTable>? orderByList,
    _i1.Transaction? transaction,
    ShopReviewInclude? include,
  }) async {
    return session.dbNext.find<ShopReview>(
      where: where?.call(ShopReview.t),
      orderBy: orderBy?.call(ShopReview.t),
      orderByList: orderByList?.call(ShopReview.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopReview?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShopReviewTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopReviewTable>? orderByList,
    _i1.Transaction? transaction,
    ShopReviewInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ShopReview>(
      where: where?.call(ShopReview.t),
      orderBy: orderBy?.call(ShopReview.t),
      orderByList: orderByList?.call(ShopReview.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopReview?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShopReviewInclude? include,
  }) async {
    return session.dbNext.findById<ShopReview>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ShopReview>> insert(
    _i1.Session session,
    List<ShopReview> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ShopReview>(
      rows,
      transaction: transaction,
    );
  }

  Future<ShopReview> insertRow(
    _i1.Session session,
    ShopReview row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ShopReview>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ShopReview>> update(
    _i1.Session session,
    List<ShopReview> rows, {
    _i1.ColumnSelections<ShopReviewTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ShopReview>(
      rows,
      columns: columns?.call(ShopReview.t),
      transaction: transaction,
    );
  }

  Future<ShopReview> updateRow(
    _i1.Session session,
    ShopReview row, {
    _i1.ColumnSelections<ShopReviewTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ShopReview>(
      row,
      columns: columns?.call(ShopReview.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ShopReview> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ShopReview>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ShopReview row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ShopReview>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopReviewTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ShopReview>(
      where: where(ShopReview.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopReviewTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ShopReview>(
      where: where?.call(ShopReview.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShopReviewAttachRowRepository {
  const ShopReviewAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    ShopReview shopReview,
    _i2.UserInfo user,
  ) async {
    if (shopReview.id == null) {
      throw ArgumentError.notNull('shopReview.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $shopReview = shopReview.copyWith(userId: user.id);
    await session.dbNext.updateRow<ShopReview>(
      $shopReview,
      columns: [ShopReview.t.userId],
    );
  }

  Future<void> shop(
    _i1.Session session,
    ShopReview shopReview,
    _i3.Shop shop,
  ) async {
    if (shopReview.id == null) {
      throw ArgumentError.notNull('shopReview.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $shopReview = shopReview.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<ShopReview>(
      $shopReview,
      columns: [ShopReview.t.shopId],
    );
  }
}

class ShopReviewDetachRowRepository {
  const ShopReviewDetachRowRepository._();

  Future<void> user(
    _i1.Session session,
    ShopReview shopreview,
  ) async {
    if (shopreview.id == null) {
      throw ArgumentError.notNull('shopreview.id');
    }

    var $shopreview = shopreview.copyWith(userId: null);
    await session.dbNext.updateRow<ShopReview>(
      $shopreview,
      columns: [ShopReview.t.userId],
    );
  }
}
