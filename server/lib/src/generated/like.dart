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

abstract class Like extends _i1.TableRow {
  Like._({
    int? id,
    required this.productId,
    this.product,
    required this.userId,
    this.user,
  }) : super(id);

  factory Like({
    int? id,
    required int productId,
    _i2.Product? product,
    required int userId,
    _i3.UserInfo? user,
  }) = _LikeImpl;

  factory Like.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Like(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      productId:
          serializationManager.deserialize<int>(jsonSerialization['productId']),
      product: serializationManager
          .deserialize<_i2.Product?>(jsonSerialization['product']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  static final t = LikeTable();

  static const db = LikeRepository._();

  int productId;

  _i2.Product? product;

  int userId;

  _i3.UserInfo? user;

  @override
  _i1.Table get table => t;

  Like copyWith({
    int? id,
    int? productId,
    _i2.Product? product,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'productId': productId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'productId': productId,
      if (product != null) 'product': product?.allToJson(),
      'userId': userId,
      if (user != null) 'user': user?.allToJson(),
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
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Like>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.find<Like>(
      where: where != null ? where(Like.t) : null,
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
  static Future<Like?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.db.findSingleRow<Like>(
      where: where != null ? where(Like.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Like?> findById(
    _i1.Session session,
    int id, {
    LikeInclude? include,
  }) async {
    return session.db.findById<Like>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Like>(
      where: where(Like.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Like row, {
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
    Like row, {
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
    Like row, {
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
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Like>(
      where: where != null ? where(Like.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static LikeInclude include({
    _i2.ProductInclude? product,
    _i3.UserInfoInclude? user,
  }) {
    return LikeInclude._(
      product: product,
      user: user,
    );
  }

  static LikeIncludeList includeList({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    LikeInclude? include,
  }) {
    return LikeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Like.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Like.t),
      include: include,
    );
  }
}

class _Undefined {}

class _LikeImpl extends Like {
  _LikeImpl({
    int? id,
    required int productId,
    _i2.Product? product,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          productId: productId,
          product: product,
          userId: userId,
          user: user,
        );

  @override
  Like copyWith({
    Object? id = _Undefined,
    int? productId,
    Object? product = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return Like(
      id: id is int? ? id : this.id,
      productId: productId ?? this.productId,
      product: product is _i2.Product? ? product : this.product?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}

class LikeTable extends _i1.Table {
  LikeTable({super.tableRelation}) : super(tableName: 'like') {
    productId = _i1.ColumnInt(
      'productId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnInt productId;

  _i2.ProductTable? _product;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  _i2.ProductTable get product {
    if (_product != null) return _product!;
    _product = _i1.createRelationTable(
      relationFieldName: 'product',
      field: Like.t.productId,
      foreignField: _i2.Product.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ProductTable(tableRelation: foreignTableRelation),
    );
    return _product!;
  }

  _i3.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: Like.t.userId,
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
        productId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'product') {
      return product;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use LikeTable.t instead.')
LikeTable tLike = LikeTable();

class LikeInclude extends _i1.IncludeObject {
  LikeInclude._({
    _i2.ProductInclude? product,
    _i3.UserInfoInclude? user,
  }) {
    _product = product;
    _user = user;
  }

  _i2.ProductInclude? _product;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'product': _product,
        'user': _user,
      };

  @override
  _i1.Table get table => Like.t;
}

class LikeIncludeList extends _i1.IncludeList {
  LikeIncludeList._({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Like.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Like.t;
}

class LikeRepository {
  const LikeRepository._();

  final attachRow = const LikeAttachRowRepository._();

  Future<List<Like>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.dbNext.find<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Like?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Like?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LikeInclude? include,
  }) async {
    return session.dbNext.findById<Like>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Like>> insert(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<Like> insertRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Like>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Like>> update(
    _i1.Session session,
    List<Like> rows, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Like>(
      rows,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  Future<Like> updateRow(
    _i1.Session session,
    Like row, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Like>(
      row,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Like>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Like>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Like>(
      where: where(Like.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Like>(
      where: where?.call(Like.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LikeAttachRowRepository {
  const LikeAttachRowRepository._();

  Future<void> product(
    _i1.Session session,
    Like like,
    _i2.Product product,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $like = like.copyWith(productId: product.id);
    await session.dbNext.updateRow<Like>(
      $like,
      columns: [Like.t.productId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Like like,
    _i3.UserInfo user,
  ) async {
    if (like.id == null) {
      throw ArgumentError.notNull('like.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $like = like.copyWith(userId: user.id);
    await session.dbNext.updateRow<Like>(
      $like,
      columns: [Like.t.userId],
    );
  }
}
