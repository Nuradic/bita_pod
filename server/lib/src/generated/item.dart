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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Item extends _i1.TableRow {
  Item._({
    int? id,
    required this.productId,
    this.product,
    required this.quantity,
    this.orderId,
    this.order,
    required this.createdAt,
  }) : super(id);

  factory Item({
    int? id,
    required int productId,
    _i2.Product? product,
    required int quantity,
    int? orderId,
    _i2.Order? order,
    required DateTime createdAt,
  }) = _ItemImpl;

  factory Item.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Item(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
      quantity:
          serializationManager.deserialize<int>(jsonSerialization['quantity']),
      orderId:
          serializationManager.deserialize<int?>(jsonSerialization['orderId']),
      order: serializationManager
          .deserialize<_i2.Order?>(jsonSerialization['order']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = ItemTable();

  static const db = ItemRepository._();

  int productId;

  _i2.Product? product;

  int quantity;

  int? orderId;

  _i2.Order? order;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  Item copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    int? quantity,
    int? orderId,
    _i2.Order? order,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'quantity': quantity,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'productId': productId,
      'quantity': quantity,
      'orderId': orderId,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.allToJson(),
      'quantity': quantity,
      if (orderId != null) 'orderId': orderId,
      if (order != null) 'order': order?.allToJson(),
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
      case 'productId':
        productId = value;
        return;
      case 'quantity':
        quantity = value;
        return;
      case 'orderId':
        orderId = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Item>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ItemInclude? include,
  }) async {
    return session.db.find<Item>(
      where: where != null ? where(Item.t) : null,
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
  static Future<Item?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ItemInclude? include,
  }) async {
    return session.db.findSingleRow<Item>(
      where: where != null ? where(Item.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Item?> findById(
    _i1.Session session,
    int id, {
    ItemInclude? include,
  }) async {
    return session.db.findById<Item>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Item>(
      where: where(Item.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Item row, {
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
    Item row, {
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
    Item row, {
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
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Item>(
      where: where != null ? where(Item.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ItemInclude include({
    _i2.ProductInclude? product,
    _i2.OrderInclude? order,
  }) {
    return ItemInclude._(
      product: product,
      order: order,
    );
  }

  static ItemIncludeList includeList({
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    ItemInclude? include,
  }) {
    return ItemIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Item.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Item.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ItemImpl extends Item {
  _ItemImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required int quantity,
    int? orderId,
    _i2.Order? order,
    required DateTime createdAt,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          quantity: quantity,
          orderId: orderId,
          order: order,
          createdAt: createdAt,
        );

  @override
  Item copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? quantity,
    Object? orderId = _Undefined,
    Object? order = _Undefined,
    DateTime? createdAt,
  }) {
    return Item(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      quantity: quantity ?? this.quantity,
      orderId: orderId is int? ? orderId : this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class ItemTable extends _i1.Table {
  ItemTable({super.tableRelation}) : super(tableName: 'item') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    quantity = _i1.ColumnInt(
      'quantity',
      this,
    );
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnInt quantity;

  late final _i1.ColumnInt orderId;

  _i2.OrderTable? _order;

  late final _i1.ColumnDateTime createdAt;

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: Item.t.productId,
      foreignField: _i2.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  _i2.OrderTable get order {
    if (_order != null) return _order!;
    _order = _i1.createRelationTable(
      relationFieldName: 'order',
      field: Item.t.orderId,
      foreignField: _i2.Order.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.OrderTable(tableRelation: foreignTableRelation),
    );
    return _order!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        productId,
        quantity,
        orderId,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    if (relationField == 'order') {
      return order;
    }
    return null;
  }
}

@Deprecated('Use ItemTable.t instead.')
ItemTable tItem = ItemTable();

class ItemInclude extends _i1.IncludeObject {
  ItemInclude._({
    _i2.ProductInclude? product,
    _i2.OrderInclude? order,
  }) {
    _product = product;
    _order = order;
  }

  _i2.ProductInclude? _product;

  _i2.OrderInclude? _order;

  @override
  Map<String, _i1.Include?> get includes => {
        'product': _product,
        'order': _order,
      };

  @override
  _i1.Table get table => Item.t;
}

class ItemIncludeList extends _i1.IncludeList {
  ItemIncludeList._({
    _i1.WhereExpressionBuilder<ItemTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Item.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Item.t;
}

class ItemRepository {
  const ItemRepository._();

  final attachRow = const ItemAttachRowRepository._();

  final detachRow = const ItemDetachRowRepository._();

  Future<List<Item>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    _i1.Transaction? transaction,
    ItemInclude? include,
  }) async {
    return session.dbNext.find<Item>(
      where: where?.call(Item.t),
      orderBy: orderBy?.call(Item.t),
      orderByList: orderByList?.call(Item.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Item?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? offset,
    _i1.OrderByBuilder<ItemTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ItemTable>? orderByList,
    _i1.Transaction? transaction,
    ItemInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Item>(
      where: where?.call(Item.t),
      orderBy: orderBy?.call(Item.t),
      orderByList: orderByList?.call(Item.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Item?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ItemInclude? include,
  }) async {
    return session.dbNext.findById<Item>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Item>> insert(
    _i1.Session session,
    List<Item> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Item>(
      rows,
      transaction: transaction,
    );
  }

  Future<Item> insertRow(
    _i1.Session session,
    Item row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Item>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Item>> update(
    _i1.Session session,
    List<Item> rows, {
    _i1.ColumnSelections<ItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Item>(
      rows,
      columns: columns?.call(Item.t),
      transaction: transaction,
    );
  }

  Future<Item> updateRow(
    _i1.Session session,
    Item row, {
    _i1.ColumnSelections<ItemTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Item>(
      row,
      columns: columns?.call(Item.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Item> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Item>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Item row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Item>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ItemTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Item>(
      where: where(Item.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ItemTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Item>(
      where: where?.call(Item.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ItemAttachRowRepository {
  const ItemAttachRowRepository._();

  Future<void> product(
    _i1.Session session,
    Item item,
    _i2.Product product,
  ) async {
    if (item.id == null) {
      throw ArgumentError.notNull('item.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $item = item.copyWith(productId: product.id);
    await session.dbNext.updateRow<Item>(
      $item,
      columns: [Item.t.productId],
    );
  }

  Future<void> order(
    _i1.Session session,
    Item item,
    _i2.Order order,
  ) async {
    if (item.id == null) {
      throw ArgumentError.notNull('item.id');
    }
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $item = item.copyWith(orderId: order.id);
    await session.dbNext.updateRow<Item>(
      $item,
      columns: [Item.t.orderId],
    );
  }
}

class ItemDetachRowRepository {
  const ItemDetachRowRepository._();

  Future<void> order(
    _i1.Session session,
    Item item,
  ) async {
    if (item.id == null) {
      throw ArgumentError.notNull('item.id');
    }

    var $item = item.copyWith(orderId: null);
    await session.dbNext.updateRow<Item>(
      $item,
      columns: [Item.t.orderId],
    );
  }
}
