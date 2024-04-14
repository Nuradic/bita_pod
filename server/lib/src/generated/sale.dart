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

abstract class Sale extends _i1.TableRow {
  Sale._({
    int? id,
    this.discount,
    required this.price,
    required this.orderId,
    this.order,
    this.desc,
  }) : super(id);

  factory Sale({
    int? id,
    double? discount,
    required int price,
    required int orderId,
    _i2.Order? order,
    String? desc,
  }) = _SaleImpl;

  factory Sale.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Sale(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      discount: serializationManager
          .deserialize<double?>(jsonSerialization['discount']),
      price: serializationManager.deserialize<int>(jsonSerialization['price']),
      orderId:
          serializationManager.deserialize<int>(jsonSerialization['orderId']),
      order: serializationManager
          .deserialize<_i2.Order?>(jsonSerialization['order']),
      desc:
          serializationManager.deserialize<String?>(jsonSerialization['desc']),
    );
  }

  static final t = SaleTable();

  static const db = SaleRepository._();

  double? discount;

  int price;

  int orderId;

  _i2.Order? order;

  String? desc;

  @override
  _i1.Table get table => t;

  Sale copyWith({
    int? id,
    double? discount,
    int? price,
    int? orderId,
    _i2.Order? order,
    String? desc,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (discount != null) 'discount': discount,
      'price': price,
      'orderId': orderId,
      if (order != null) 'order': order?.toJson(),
      if (desc != null) 'desc': desc,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'discount': discount,
      'price': price,
      'orderId': orderId,
      'desc': desc,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (discount != null) 'discount': discount,
      'price': price,
      'orderId': orderId,
      if (order != null) 'order': order?.allToJson(),
      if (desc != null) 'desc': desc,
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
      case 'discount':
        discount = value;
        return;
      case 'price':
        price = value;
        return;
      case 'orderId':
        orderId = value;
        return;
      case 'desc':
        desc = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Sale>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SaleInclude? include,
  }) async {
    return session.db.find<Sale>(
      where: where != null ? where(Sale.t) : null,
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
  static Future<Sale?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    SaleInclude? include,
  }) async {
    return session.db.findSingleRow<Sale>(
      where: where != null ? where(Sale.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Sale?> findById(
    _i1.Session session,
    int id, {
    SaleInclude? include,
  }) async {
    return session.db.findById<Sale>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SaleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Sale>(
      where: where(Sale.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Sale row, {
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
    Sale row, {
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
    Sale row, {
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
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Sale>(
      where: where != null ? where(Sale.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SaleInclude include({_i2.OrderInclude? order}) {
    return SaleInclude._(order: order);
  }

  static SaleIncludeList includeList({
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SaleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SaleTable>? orderByList,
    SaleInclude? include,
  }) {
    return SaleIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Sale.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Sale.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SaleImpl extends Sale {
  _SaleImpl({
    int? id,
    double? discount,
    required int price,
    required int orderId,
    _i2.Order? order,
    String? desc,
  }) : super._(
          id: id,
          discount: discount,
          price: price,
          orderId: orderId,
          order: order,
          desc: desc,
        );

  @override
  Sale copyWith({
    Object? id = _Undefined,
    Object? discount = _Undefined,
    int? price,
    int? orderId,
    Object? order = _Undefined,
    Object? desc = _Undefined,
  }) {
    return Sale(
      id: id is int? ? id : this.id,
      discount: discount is double? ? discount : this.discount,
      price: price ?? this.price,
      orderId: orderId ?? this.orderId,
      order: order is _i2.Order? ? order : this.order?.copyWith(),
      desc: desc is String? ? desc : this.desc,
    );
  }
}

class SaleTable extends _i1.Table {
  SaleTable({super.tableRelation}) : super(tableName: 'sale') {
    discount = _i1.ColumnDouble(
      'discount',
      this,
    );
    price = _i1.ColumnInt(
      'price',
      this,
    );
    orderId = _i1.ColumnInt(
      'orderId',
      this,
    );
    desc = _i1.ColumnString(
      'desc',
      this,
    );
  }

  late final _i1.ColumnDouble discount;

  late final _i1.ColumnInt price;

  late final _i1.ColumnInt orderId;

  _i2.OrderTable? _order;

  late final _i1.ColumnString desc;

  _i2.OrderTable get order {
    if (_order != null) return _order!;
    _order = _i1.createRelationTable(
      relationFieldName: 'order',
      field: Sale.t.orderId,
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
        discount,
        price,
        orderId,
        desc,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'order') {
      return order;
    }
    return null;
  }
}

@Deprecated('Use SaleTable.t instead.')
SaleTable tSale = SaleTable();

class SaleInclude extends _i1.IncludeObject {
  SaleInclude._({_i2.OrderInclude? order}) {
    _order = order;
  }

  _i2.OrderInclude? _order;

  @override
  Map<String, _i1.Include?> get includes => {'order': _order};

  @override
  _i1.Table get table => Sale.t;
}

class SaleIncludeList extends _i1.IncludeList {
  SaleIncludeList._({
    _i1.WhereExpressionBuilder<SaleTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Sale.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Sale.t;
}

class SaleRepository {
  const SaleRepository._();

  final attachRow = const SaleAttachRowRepository._();

  Future<List<Sale>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SaleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SaleTable>? orderByList,
    _i1.Transaction? transaction,
    SaleInclude? include,
  }) async {
    return session.dbNext.find<Sale>(
      where: where?.call(Sale.t),
      orderBy: orderBy?.call(Sale.t),
      orderByList: orderByList?.call(Sale.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Sale?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? offset,
    _i1.OrderByBuilder<SaleTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SaleTable>? orderByList,
    _i1.Transaction? transaction,
    SaleInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Sale>(
      where: where?.call(Sale.t),
      orderBy: orderBy?.call(Sale.t),
      orderByList: orderByList?.call(Sale.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Sale?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    SaleInclude? include,
  }) async {
    return session.dbNext.findById<Sale>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Sale>> insert(
    _i1.Session session,
    List<Sale> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Sale>(
      rows,
      transaction: transaction,
    );
  }

  Future<Sale> insertRow(
    _i1.Session session,
    Sale row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Sale>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Sale>> update(
    _i1.Session session,
    List<Sale> rows, {
    _i1.ColumnSelections<SaleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Sale>(
      rows,
      columns: columns?.call(Sale.t),
      transaction: transaction,
    );
  }

  Future<Sale> updateRow(
    _i1.Session session,
    Sale row, {
    _i1.ColumnSelections<SaleTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Sale>(
      row,
      columns: columns?.call(Sale.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Sale> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Sale>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Sale row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Sale>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SaleTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Sale>(
      where: where(Sale.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SaleTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Sale>(
      where: where?.call(Sale.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class SaleAttachRowRepository {
  const SaleAttachRowRepository._();

  Future<void> order(
    _i1.Session session,
    Sale sale,
    _i2.Order order,
  ) async {
    if (sale.id == null) {
      throw ArgumentError.notNull('sale.id');
    }
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $sale = sale.copyWith(orderId: order.id);
    await session.dbNext.updateRow<Sale>(
      $sale,
      columns: [Sale.t.orderId],
    );
  }
}
