/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Policy extends _i1.TableRow {
  Policy._({
    int? id,
    required this.number,
    required this.detail,
    required this.createdAt,
  }) : super(id);

  factory Policy({
    int? id,
    required int number,
    required String detail,
    required DateTime createdAt,
  }) = _PolicyImpl;

  factory Policy.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Policy(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      number:
          serializationManager.deserialize<int>(jsonSerialization['number']),
      detail:
          serializationManager.deserialize<String>(jsonSerialization['detail']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = PolicyTable();

  static const db = PolicyRepository._();

  int number;

  String detail;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  Policy copyWith({
    int? id,
    int? number,
    String? detail,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'number': number,
      'detail': detail,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'number': number,
      'detail': detail,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'number': number,
      'detail': detail,
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
      case 'number':
        number = value;
        return;
      case 'detail':
        detail = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Policy>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Policy>(
      where: where != null ? where(Policy.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Policy?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Policy>(
      where: where != null ? where(Policy.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Policy?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Policy>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PolicyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Policy>(
      where: where(Policy.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Policy row, {
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
    Policy row, {
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
    Policy row, {
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
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Policy>(
      where: where != null ? where(Policy.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static PolicyInclude include() {
    return PolicyInclude._();
  }

  static PolicyIncludeList includeList({
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PolicyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PolicyTable>? orderByList,
    PolicyInclude? include,
  }) {
    return PolicyIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Policy.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Policy.t),
      include: include,
    );
  }
}

class _Undefined {}

class _PolicyImpl extends Policy {
  _PolicyImpl({
    int? id,
    required int number,
    required String detail,
    required DateTime createdAt,
  }) : super._(
          id: id,
          number: number,
          detail: detail,
          createdAt: createdAt,
        );

  @override
  Policy copyWith({
    Object? id = _Undefined,
    int? number,
    String? detail,
    DateTime? createdAt,
  }) {
    return Policy(
      id: id is int? ? id : this.id,
      number: number ?? this.number,
      detail: detail ?? this.detail,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class PolicyTable extends _i1.Table {
  PolicyTable({super.tableRelation}) : super(tableName: 'policy') {
    number = _i1.ColumnInt(
      'number',
      this,
    );
    detail = _i1.ColumnString(
      'detail',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt number;

  late final _i1.ColumnString detail;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        number,
        detail,
        createdAt,
      ];
}

@Deprecated('Use PolicyTable.t instead.')
PolicyTable tPolicy = PolicyTable();

class PolicyInclude extends _i1.IncludeObject {
  PolicyInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Policy.t;
}

class PolicyIncludeList extends _i1.IncludeList {
  PolicyIncludeList._({
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Policy.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Policy.t;
}

class PolicyRepository {
  const PolicyRepository._();

  Future<List<Policy>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PolicyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PolicyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Policy>(
      where: where?.call(Policy.t),
      orderBy: orderBy?.call(Policy.t),
      orderByList: orderByList?.call(Policy.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Policy?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? offset,
    _i1.OrderByBuilder<PolicyTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PolicyTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Policy>(
      where: where?.call(Policy.t),
      orderBy: orderBy?.call(Policy.t),
      orderByList: orderByList?.call(Policy.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Policy?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Policy>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Policy>> insert(
    _i1.Session session,
    List<Policy> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Policy>(
      rows,
      transaction: transaction,
    );
  }

  Future<Policy> insertRow(
    _i1.Session session,
    Policy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Policy>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Policy>> update(
    _i1.Session session,
    List<Policy> rows, {
    _i1.ColumnSelections<PolicyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Policy>(
      rows,
      columns: columns?.call(Policy.t),
      transaction: transaction,
    );
  }

  Future<Policy> updateRow(
    _i1.Session session,
    Policy row, {
    _i1.ColumnSelections<PolicyTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Policy>(
      row,
      columns: columns?.call(Policy.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Policy> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Policy>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Policy row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Policy>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PolicyTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Policy>(
      where: where(Policy.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PolicyTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Policy>(
      where: where?.call(Policy.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
