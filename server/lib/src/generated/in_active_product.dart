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

abstract class InActiveProduct extends _i1.TableRow {
  InActiveProduct._({
    int? id,
    required this.productId,
    this.product,
  }) : super(id);

  factory InActiveProduct({
    int? id,
    required int productId,
    _i2.Product? product,
  }) = _InActiveProductImpl;

  factory InActiveProduct.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return InActiveProduct(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
    );
  }

  static final t = InActiveProductTable();

  static const db = InActiveProductRepository._();

  int productId;

  _i2.Product? product;

  @override
  _i1.Table get table => t;

  InActiveProduct copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'productId': productId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.allToJson(),
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
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<InActiveProduct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    InActiveProductInclude? include,
  }) async {
    return session.db.find<InActiveProduct>(
      where: where != null ? where(InActiveProduct.t) : null,
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
  static Future<InActiveProduct?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    InActiveProductInclude? include,
  }) async {
    return session.db.findSingleRow<InActiveProduct>(
      where: where != null ? where(InActiveProduct.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<InActiveProduct?> findById(
    _i1.Session session,
    int id, {
    InActiveProductInclude? include,
  }) async {
    return session.db.findById<InActiveProduct>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InActiveProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<InActiveProduct>(
      where: where(InActiveProduct.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    InActiveProduct row, {
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
    InActiveProduct row, {
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
    InActiveProduct row, {
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
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<InActiveProduct>(
      where: where != null ? where(InActiveProduct.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static InActiveProductInclude include({_i2.ProductInclude? product}) {
    return InActiveProductInclude._(product: product);
  }

  static InActiveProductIncludeList includeList({
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InActiveProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InActiveProductTable>? orderByList,
    InActiveProductInclude? include,
  }) {
    return InActiveProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(InActiveProduct.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(InActiveProduct.t),
      include: include,
    );
  }
}

class _Undefined {}

class _InActiveProductImpl extends InActiveProduct {
  _InActiveProductImpl({
    int? id,
    required int productId,
    _i2.Product? product,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
        );

  @override
  InActiveProduct copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
  }) {
    return InActiveProduct(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
    );
  }
}

class InActiveProductTable extends _i1.Table {
  InActiveProductTable({super.tableRelation})
      : super(tableName: 'in_active_product') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: InActiveProduct.t.productId,
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
        productId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    return null;
  }
}

@Deprecated('Use InActiveProductTable.t instead.')
InActiveProductTable tInActiveProduct = InActiveProductTable();

class InActiveProductInclude extends _i1.IncludeObject {
  InActiveProductInclude._({_i2.ProductInclude? product}) {
    _product = product;
  }

  _i2.ProductInclude? _product;

  @override
  Map<String, _i1.Include?> get includes => {'product': _product};

  @override
  _i1.Table get table => InActiveProduct.t;
}

class InActiveProductIncludeList extends _i1.IncludeList {
  InActiveProductIncludeList._({
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(InActiveProduct.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => InActiveProduct.t;
}

class InActiveProductRepository {
  const InActiveProductRepository._();

  final attachRow = const InActiveProductAttachRowRepository._();

  Future<List<InActiveProduct>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<InActiveProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InActiveProductTable>? orderByList,
    _i1.Transaction? transaction,
    InActiveProductInclude? include,
  }) async {
    return session.dbNext.find<InActiveProduct>(
      where: where?.call(InActiveProduct.t),
      orderBy: orderBy?.call(InActiveProduct.t),
      orderByList: orderByList?.call(InActiveProduct.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<InActiveProduct?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<InActiveProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<InActiveProductTable>? orderByList,
    _i1.Transaction? transaction,
    InActiveProductInclude? include,
  }) async {
    return session.dbNext.findFirstRow<InActiveProduct>(
      where: where?.call(InActiveProduct.t),
      orderBy: orderBy?.call(InActiveProduct.t),
      orderByList: orderByList?.call(InActiveProduct.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<InActiveProduct?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    InActiveProductInclude? include,
  }) async {
    return session.dbNext.findById<InActiveProduct>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<InActiveProduct>> insert(
    _i1.Session session,
    List<InActiveProduct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<InActiveProduct>(
      rows,
      transaction: transaction,
    );
  }

  Future<InActiveProduct> insertRow(
    _i1.Session session,
    InActiveProduct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<InActiveProduct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<InActiveProduct>> update(
    _i1.Session session,
    List<InActiveProduct> rows, {
    _i1.ColumnSelections<InActiveProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<InActiveProduct>(
      rows,
      columns: columns?.call(InActiveProduct.t),
      transaction: transaction,
    );
  }

  Future<InActiveProduct> updateRow(
    _i1.Session session,
    InActiveProduct row, {
    _i1.ColumnSelections<InActiveProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<InActiveProduct>(
      row,
      columns: columns?.call(InActiveProduct.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<InActiveProduct> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<InActiveProduct>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    InActiveProduct row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<InActiveProduct>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<InActiveProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<InActiveProduct>(
      where: where(InActiveProduct.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<InActiveProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<InActiveProduct>(
      where: where?.call(InActiveProduct.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class InActiveProductAttachRowRepository {
  const InActiveProductAttachRowRepository._();

  Future<void> product(
    _i1.Session session,
    InActiveProduct inActiveProduct,
    _i2.Product product,
  ) async {
    if (inActiveProduct.id == null) {
      throw ArgumentError.notNull('inActiveProduct.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $inActiveProduct = inActiveProduct.copyWith(productId: product.id);
    await session.dbNext.updateRow<InActiveProduct>(
      $inActiveProduct,
      columns: [InActiveProduct.t.productId],
    );
  }
}
