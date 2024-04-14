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

abstract class Order extends _i1.TableRow {
  Order._({
    int? id,
    required this.status,
    this.soldById,
    this.soldBy,
    required this.message,
    required this.shopId,
    this.shop,
    this.userId,
    this.user,
  }) : super(id);

  factory Order({
    int? id,
    required _i2.OrderStatus status,
    int? soldById,
    _i3.UserInfo? soldBy,
    required String message,
    required int shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  }) = _OrderImpl;

  factory Order.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Order(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      status: serializationManager
          .deserialize<_i2.OrderStatus>(jsonSerialization['status']),
      soldById:
          serializationManager.deserialize<int?>(jsonSerialization['soldById']),
      soldBy: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['soldBy']),
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  static final t = OrderTable();

  static const db = OrderRepository._();

  _i2.OrderStatus status;

  int? soldById;

  _i3.UserInfo? soldBy;

  String message;

  int shopId;

  _i2.Shop? shop;

  int? userId;

  _i3.UserInfo? user;

  @override
  _i1.Table get table => t;

  Order copyWith({
    int? id,
    _i2.OrderStatus? status,
    int? soldById,
    _i3.UserInfo? soldBy,
    String? message,
    int? shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'status': status.toJson(),
      if (soldById != null) 'soldById': soldById,
      if (soldBy != null) 'soldBy': soldBy?.toJson(),
      'message': message,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'status': status,
      'soldById': soldById,
      'message': message,
      'shopId': shopId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'status': status.toJson(),
      if (soldById != null) 'soldById': soldById,
      if (soldBy != null) 'soldBy': soldBy?.allToJson(),
      'message': message,
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
      if (userId != null) 'userId': userId,
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
      case 'status':
        status = value;
        return;
      case 'soldById':
        soldById = value;
        return;
      case 'message':
        message = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Order>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.find<Order>(
      where: where != null ? where(Order.t) : null,
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
  static Future<Order?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.db.findSingleRow<Order>(
      where: where != null ? where(Order.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Order?> findById(
    _i1.Session session,
    int id, {
    OrderInclude? include,
  }) async {
    return session.db.findById<Order>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Order>(
      where: where(Order.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Order row, {
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
    Order row, {
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
    Order row, {
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
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Order>(
      where: where != null ? where(Order.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static OrderInclude include({
    _i3.UserInfoInclude? soldBy,
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
  }) {
    return OrderInclude._(
      soldBy: soldBy,
      shop: shop,
      user: user,
    );
  }

  static OrderIncludeList includeList({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    OrderInclude? include,
  }) {
    return OrderIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Order.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Order.t),
      include: include,
    );
  }
}

class _Undefined {}

class _OrderImpl extends Order {
  _OrderImpl({
    int? id,
    required _i2.OrderStatus status,
    int? soldById,
    _i3.UserInfo? soldBy,
    required String message,
    required int shopId,
    _i2.Shop? shop,
    int? userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          status: status,
          soldById: soldById,
          soldBy: soldBy,
          message: message,
          shopId: shopId,
          shop: shop,
          userId: userId,
          user: user,
        );

  @override
  Order copyWith({
    Object? id = _Undefined,
    _i2.OrderStatus? status,
    Object? soldById = _Undefined,
    Object? soldBy = _Undefined,
    String? message,
    int? shopId,
    Object? shop = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
  }) {
    return Order(
      id: id is int? ? id : this.id,
      status: status ?? this.status,
      soldById: soldById is int? ? soldById : this.soldById,
      soldBy: soldBy is _i3.UserInfo? ? soldBy : this.soldBy?.copyWith(),
      message: message ?? this.message,
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
      userId: userId is int? ? userId : this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}

class OrderTable extends _i1.Table {
  OrderTable({super.tableRelation}) : super(tableName: 'order') {
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
    soldById = _i1.ColumnInt(
      'soldById',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnEnum<_i2.OrderStatus> status;

  late final _i1.ColumnInt soldById;

  _i3.UserInfoTable? _soldBy;

  late final _i1.ColumnString message;

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  _i3.UserInfoTable get soldBy {
    if (_soldBy != null) return _soldBy!;
    _soldBy = _i1.createRelationTable(
      relationFieldName: 'soldBy',
      field: Order.t.soldById,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _soldBy!;
  }

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Order.t.shopId,
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
      field: Order.t.userId,
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
        status,
        soldById,
        message,
        shopId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'soldBy') {
      return soldBy;
    }
    if (relationField == 'shop') {
      return shop;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use OrderTable.t instead.')
OrderTable tOrder = OrderTable();

class OrderInclude extends _i1.IncludeObject {
  OrderInclude._({
    _i3.UserInfoInclude? soldBy,
    _i2.ShopInclude? shop,
    _i3.UserInfoInclude? user,
  }) {
    _soldBy = soldBy;
    _shop = shop;
    _user = user;
  }

  _i3.UserInfoInclude? _soldBy;

  _i2.ShopInclude? _shop;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'soldBy': _soldBy,
        'shop': _shop,
        'user': _user,
      };

  @override
  _i1.Table get table => Order.t;
}

class OrderIncludeList extends _i1.IncludeList {
  OrderIncludeList._({
    _i1.WhereExpressionBuilder<OrderTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Order.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Order.t;
}

class OrderRepository {
  const OrderRepository._();

  final attachRow = const OrderAttachRowRepository._();

  final detachRow = const OrderDetachRowRepository._();

  Future<List<Order>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.dbNext.find<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Order?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? offset,
    _i1.OrderByBuilder<OrderTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<OrderTable>? orderByList,
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Order>(
      where: where?.call(Order.t),
      orderBy: orderBy?.call(Order.t),
      orderByList: orderByList?.call(Order.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Order?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    OrderInclude? include,
  }) async {
    return session.dbNext.findById<Order>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Order>> insert(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Order>(
      rows,
      transaction: transaction,
    );
  }

  Future<Order> insertRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Order>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Order>> update(
    _i1.Session session,
    List<Order> rows, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Order>(
      rows,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  Future<Order> updateRow(
    _i1.Session session,
    Order row, {
    _i1.ColumnSelections<OrderTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Order>(
      row,
      columns: columns?.call(Order.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Order> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Order>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Order row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Order>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<OrderTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Order>(
      where: where(Order.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<OrderTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Order>(
      where: where?.call(Order.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class OrderAttachRowRepository {
  const OrderAttachRowRepository._();

  Future<void> soldBy(
    _i1.Session session,
    Order order,
    _i3.UserInfo soldBy,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (soldBy.id == null) {
      throw ArgumentError.notNull('soldBy.id');
    }

    var $order = order.copyWith(soldById: soldBy.id);
    await session.dbNext.updateRow<Order>(
      $order,
      columns: [Order.t.soldById],
    );
  }

  Future<void> shop(
    _i1.Session session,
    Order order,
    _i2.Shop shop,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $order = order.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Order>(
      $order,
      columns: [Order.t.shopId],
    );
  }

  Future<void> user(
    _i1.Session session,
    Order order,
    _i3.UserInfo user,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $order = order.copyWith(userId: user.id);
    await session.dbNext.updateRow<Order>(
      $order,
      columns: [Order.t.userId],
    );
  }
}

class OrderDetachRowRepository {
  const OrderDetachRowRepository._();

  Future<void> soldBy(
    _i1.Session session,
    Order order,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $order = order.copyWith(soldById: null);
    await session.dbNext.updateRow<Order>(
      $order,
      columns: [Order.t.soldById],
    );
  }

  Future<void> user(
    _i1.Session session,
    Order order,
  ) async {
    if (order.id == null) {
      throw ArgumentError.notNull('order.id');
    }

    var $order = order.copyWith(userId: null);
    await session.dbNext.updateRow<Order>(
      $order,
      columns: [Order.t.userId],
    );
  }
}
