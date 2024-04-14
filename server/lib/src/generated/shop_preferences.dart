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

abstract class ShopPreference extends _i1.TableRow {
  ShopPreference._({
    int? id,
    required this.shopId,
    this.shop,
    required this.isAvailableOnline,
    required this.notifyNewProductComing,
    required this.acceptOrders,
  }) : super(id);

  factory ShopPreference({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required bool isAvailableOnline,
    required bool notifyNewProductComing,
    required bool acceptOrders,
  }) = _ShopPreferenceImpl;

  factory ShopPreference.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ShopPreference(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      isAvailableOnline: serializationManager
          .deserialize<bool>(jsonSerialization['isAvailableOnline']),
      notifyNewProductComing: serializationManager
          .deserialize<bool>(jsonSerialization['notifyNewProductComing']),
      acceptOrders: serializationManager
          .deserialize<bool>(jsonSerialization['acceptOrders']),
    );
  }

  static final t = ShopPreferenceTable();

  static const db = ShopPreferenceRepository._();

  int shopId;

  _i2.Shop? shop;

  bool isAvailableOnline;

  bool notifyNewProductComing;

  bool acceptOrders;

  @override
  _i1.Table get table => t;

  ShopPreference copyWith({
    int? id,
    int? shopId,
    _i2.Shop? shop,
    bool? isAvailableOnline,
    bool? notifyNewProductComing,
    bool? acceptOrders,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      'isAvailableOnline': isAvailableOnline,
      'notifyNewProductComing': notifyNewProductComing,
      'acceptOrders': acceptOrders,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'shopId': shopId,
      'isAvailableOnline': isAvailableOnline,
      'notifyNewProductComing': notifyNewProductComing,
      'acceptOrders': acceptOrders,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      'isAvailableOnline': isAvailableOnline,
      'notifyNewProductComing': notifyNewProductComing,
      'acceptOrders': acceptOrders,
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
      case 'isAvailableOnline':
        isAvailableOnline = value;
        return;
      case 'notifyNewProductComing':
        notifyNewProductComing = value;
        return;
      case 'acceptOrders':
        acceptOrders = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<ShopPreference>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopPreferenceInclude? include,
  }) async {
    return session.db.find<ShopPreference>(
      where: where != null ? where(ShopPreference.t) : null,
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
  static Future<ShopPreference?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopPreferenceInclude? include,
  }) async {
    return session.db.findSingleRow<ShopPreference>(
      where: where != null ? where(ShopPreference.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<ShopPreference?> findById(
    _i1.Session session,
    int id, {
    ShopPreferenceInclude? include,
  }) async {
    return session.db.findById<ShopPreference>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopPreferenceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ShopPreference>(
      where: where(ShopPreference.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    ShopPreference row, {
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
    ShopPreference row, {
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
    ShopPreference row, {
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
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ShopPreference>(
      where: where != null ? where(ShopPreference.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShopPreferenceInclude include({_i2.ShopInclude? shop}) {
    return ShopPreferenceInclude._(shop: shop);
  }

  static ShopPreferenceIncludeList includeList({
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopPreferenceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopPreferenceTable>? orderByList,
    ShopPreferenceInclude? include,
  }) {
    return ShopPreferenceIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ShopPreference.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ShopPreference.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ShopPreferenceImpl extends ShopPreference {
  _ShopPreferenceImpl({
    int? id,
    required int shopId,
    _i2.Shop? shop,
    required bool isAvailableOnline,
    required bool notifyNewProductComing,
    required bool acceptOrders,
  }) : super._(
          id: id,
          shopId: shopId,
          shop: shop,
          isAvailableOnline: isAvailableOnline,
          notifyNewProductComing: notifyNewProductComing,
          acceptOrders: acceptOrders,
        );

  @override
  ShopPreference copyWith({
    Object? id = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
    bool? isAvailableOnline,
    bool? notifyNewProductComing,
    bool? acceptOrders,
  }) {
    return ShopPreference(
      id: id is int? ? id : this.id,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      isAvailableOnline: isAvailableOnline ?? this.isAvailableOnline,
      notifyNewProductComing:
          notifyNewProductComing ?? this.notifyNewProductComing,
      acceptOrders: acceptOrders ?? this.acceptOrders,
    );
  }
}

class ShopPreferenceTable extends _i1.Table {
  ShopPreferenceTable({super.tableRelation})
      : super(tableName: 'shop_preference') {
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    isAvailableOnline = _i1.ColumnBool(
      'isAvailableOnline',
      this,
    );
    notifyNewProductComing = _i1.ColumnBool(
      'notifyNewProductComing',
      this,
    );
    acceptOrders = _i1.ColumnBool(
      'acceptOrders',
      this,
    );
  }

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  late final _i1.ColumnBool isAvailableOnline;

  late final _i1.ColumnBool notifyNewProductComing;

  late final _i1.ColumnBool acceptOrders;

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: ShopPreference.t.shopId,
      foreignField: _i2.Shop.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ShopTable(tableRelation: foreignTableRelation),
    );
    return _shop!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        shopId,
        isAvailableOnline,
        notifyNewProductComing,
        acceptOrders,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'shop') {
      return shop;
    }
    return null;
  }
}

@Deprecated('Use ShopPreferenceTable.t instead.')
ShopPreferenceTable tShopPreference = ShopPreferenceTable();

class ShopPreferenceInclude extends _i1.IncludeObject {
  ShopPreferenceInclude._({_i2.ShopInclude? shop}) {
    _shop = shop;
  }

  _i2.ShopInclude? _shop;

  @override
  Map<String, _i1.Include?> get includes => {'shop': _shop};

  @override
  _i1.Table get table => ShopPreference.t;
}

class ShopPreferenceIncludeList extends _i1.IncludeList {
  ShopPreferenceIncludeList._({
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ShopPreference.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => ShopPreference.t;
}

class ShopPreferenceRepository {
  const ShopPreferenceRepository._();

  final attachRow = const ShopPreferenceAttachRowRepository._();

  Future<List<ShopPreference>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopPreferenceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopPreferenceTable>? orderByList,
    _i1.Transaction? transaction,
    ShopPreferenceInclude? include,
  }) async {
    return session.dbNext.find<ShopPreference>(
      where: where?.call(ShopPreference.t),
      orderBy: orderBy?.call(ShopPreference.t),
      orderByList: orderByList?.call(ShopPreference.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopPreference?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShopPreferenceTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopPreferenceTable>? orderByList,
    _i1.Transaction? transaction,
    ShopPreferenceInclude? include,
  }) async {
    return session.dbNext.findFirstRow<ShopPreference>(
      where: where?.call(ShopPreference.t),
      orderBy: orderBy?.call(ShopPreference.t),
      orderByList: orderByList?.call(ShopPreference.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<ShopPreference?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShopPreferenceInclude? include,
  }) async {
    return session.dbNext.findById<ShopPreference>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<ShopPreference>> insert(
    _i1.Session session,
    List<ShopPreference> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<ShopPreference>(
      rows,
      transaction: transaction,
    );
  }

  Future<ShopPreference> insertRow(
    _i1.Session session,
    ShopPreference row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<ShopPreference>(
      row,
      transaction: transaction,
    );
  }

  Future<List<ShopPreference>> update(
    _i1.Session session,
    List<ShopPreference> rows, {
    _i1.ColumnSelections<ShopPreferenceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<ShopPreference>(
      rows,
      columns: columns?.call(ShopPreference.t),
      transaction: transaction,
    );
  }

  Future<ShopPreference> updateRow(
    _i1.Session session,
    ShopPreference row, {
    _i1.ColumnSelections<ShopPreferenceTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<ShopPreference>(
      row,
      columns: columns?.call(ShopPreference.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<ShopPreference> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<ShopPreference>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    ShopPreference row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<ShopPreference>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopPreferenceTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<ShopPreference>(
      where: where(ShopPreference.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopPreferenceTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<ShopPreference>(
      where: where?.call(ShopPreference.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShopPreferenceAttachRowRepository {
  const ShopPreferenceAttachRowRepository._();

  Future<void> shop(
    _i1.Session session,
    ShopPreference shopPreference,
    _i2.Shop shop,
  ) async {
    if (shopPreference.id == null) {
      throw ArgumentError.notNull('shopPreference.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $shopPreference = shopPreference.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<ShopPreference>(
      $shopPreference,
      columns: [ShopPreference.t.shopId],
    );
  }
}
