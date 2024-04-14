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

abstract class Blocked extends _i1.TableRow {
  Blocked._({
    int? id,
    this.shopId,
    this.shop,
    this.userId,
    this.user,
    this.productId,
    this.product,
    this.endDate,
  }) : super(id);

  factory Blocked({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  }) = _BlockedImpl;

  factory Blocked.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Blocked(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int?>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
      productId: serializationManager
          .deserialize<int?>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
      endDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['endDate']),
    );
  }

  static final t = BlockedTable();

  static const db = BlockedRepository._();

  int? shopId;

  _i2.Shop? shop;

  int? userId;

  _i3.UserInfo? user;

  int? productId;

  _i2.Product? product;

  DateTime? endDate;

  @override
  _i1.Table get table => t;

  Blocked copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (shopId != null) 'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.toJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'shopId': shopId,
      'userId': userId,
      'productId': productId,
      'endDate': endDate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (shopId != null) 'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.allToJson(),
      if (productId != null) 'productId': productId,
      if (product != null) 'product': product?.allToJson(),
      if (endDate != null) 'endDate': endDate?.toJson(),
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
      case 'productId':
        productId = value;
        return;
      case 'endDate':
        endDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Blocked>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.db.find<Blocked>(
      where: where != null ? where(Blocked.t) : null,
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
  static Future<Blocked?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.db.findSingleRow<Blocked>(
      where: where != null ? where(Blocked.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Blocked?> findById(
    _i1.Session session,
    int id, {
    BlockedInclude? include,
  }) async {
    return session.db.findById<Blocked>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BlockedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Blocked>(
      where: where(Blocked.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Blocked row, {
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
    Blocked row, {
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
    Blocked row, {
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
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Blocked>(
      where: where != null ? where(Blocked.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BlockedInclude include({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
    _i2.ProductInclude? product,
  }) {
    return BlockedInclude._(
      shop: shop,
      user: user,
      product: product,
    );
  }

  static BlockedIncludeList includeList({
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    BlockedInclude? include,
  }) {
    return BlockedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Blocked.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Blocked.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BlockedImpl extends Blocked {
  _BlockedImpl({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
    int? productId,
    _i2.Product? product,
    DateTime? endDate,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
          productId: productId,
          product: product,
          endDate: endDate,
        );

  @override
  Blocked copyWith({
    Object? id = _Undefined,
    Object? shopId = _Undefined,
    Object? shop = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
    Object? productId = _Undefined,
    Object? product = _Undefined,
    Object? endDate = _Undefined,
  }) {
    return Blocked(
      id: id is int? ? id : this.id,
      shopId: shopId is int? ? shopId : this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
      productId: productId is int? ? productId : this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      endDate: endDate is DateTime? ? endDate : this.endDate,
    );
  }
}

class BlockedTable extends _i1.Table {
  BlockedTable({super.tableRelation}) : super(tableName: 'blocked') {
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    endDate = _i1.ColumnDateTime(
      'endDate',
      this,
    );
  }

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnDateTime endDate;

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Blocked.t.shopId,
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
      field: Blocked.t.userId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: Blocked.t.productId,
      foreignField: _i2.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        shopId,
        userId,
        productId,
        endDate,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'shop') {
      return shop;
    }
    if (relationField == 'user') {
      return user;
    }
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

@Deprecated('Use BlockedTable.t instead.')
BlockedTable tBlocked = BlockedTable();

class BlockedInclude extends _i1.IncludeObject {
  BlockedInclude._({
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
    _i2.ProductInclude? product,
  }) {
    _shop = shop;
    _user = user;
    _product = product;
  }

  _i2.ShopInclude? _shop;

  _i3.UserInfoInclude? _user;

  _i2.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {
        'shop': _shop,
        'user': _user,
        'product': _product,
      };

  @override
  _i1.Table get table => Blocked.t;
}

class BlockedIncludeList extends _i1.IncludeList {
  BlockedIncludeList._({
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Blocked.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Blocked.t;
}

class BlockedRepository {
  const BlockedRepository._();

  final attachRow = const BlockedAttachRowRepository._();

  final detachRow = const BlockedDetachRowRepository._();

  Future<List<Blocked>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.dbNext.find<Blocked>(
      where: where?.call(Blocked.t),
      orderBy: orderBy?.call(Blocked.t),
      orderByList: orderByList?.call(Blocked.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Blocked?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? offset,
    _i1.OrderByBuilder<BlockedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BlockedTable>? orderByList,
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Blocked>(
      where: where?.call(Blocked.t),
      orderBy: orderBy?.call(Blocked.t),
      orderByList: orderByList?.call(Blocked.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Blocked?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BlockedInclude? include,
  }) async {
    return session.dbNext.findById<Blocked>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Blocked>> insert(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Blocked>(
      rows,
      transaction: transaction,
    );
  }

  Future<Blocked> insertRow(
    _i1.Session session,
    Blocked row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Blocked>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Blocked>> update(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.ColumnSelections<BlockedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Blocked>(
      rows,
      columns: columns?.call(Blocked.t),
      transaction: transaction,
    );
  }

  Future<Blocked> updateRow(
    _i1.Session session,
    Blocked row, {
    _i1.ColumnSelections<BlockedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Blocked>(
      row,
      columns: columns?.call(Blocked.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Blocked> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Blocked>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Blocked row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Blocked>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BlockedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Blocked>(
      where: where(Blocked.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BlockedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Blocked>(
      where: where?.call(Blocked.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BlockedAttachRowRepository {
  const BlockedAttachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    Blocked blocked,
    _i2.Shop shop,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $blocked = blocked.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.shopId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Blocked blocked,
    _i3.UserInfo user,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $blocked = blocked.copyWith(userId: user.id);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.userId],
    );
  }

  Future<void> product(
    _i1.Session session,
    Blocked blocked,
    _i2.Product product,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $blocked = blocked.copyWith(productId: product.id);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.productId],
    );
  }
}

class BlockedDetachRowRepository {
  const BlockedDetachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    Blocked blocked,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }

    var $blocked = blocked.copyWith(shopId: null);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.shopId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Blocked blocked,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }

    var $blocked = blocked.copyWith(userId: null);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.userId],
    );
  }

  Future<void> product(
    _i1.Session session,
    Blocked blocked,
  ) async {
    if (blocked.id == null) {
      throw ArgumentError.notNull('blocked.id');
    }

    var $blocked = blocked.copyWith(productId: null);
    await session.dbNext.updateRow<Blocked>(
      $blocked,
      columns: [Blocked.t.productId],
    );
  }
}
