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

abstract class Catagory extends _i1.TableRow {
  Catagory._({
    int? id,
    required this.name,
    this.desc,
    this.catagoryId,
    this.catagory,
    this.subcatagories,
  }) : super(id);

  factory Catagory({
    int? id,
    required String name,
    String? desc,
    int? catagoryId,
    _i2.Catagory? catagory,
    List<_i2.Catagory>? subcatagories,
  }) = _CatagoryImpl;

  factory Catagory.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Catagory(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      desc:
          serializationManager.deserialize<String?>(jsonSerialization['desc']),
      catagoryId: serializationManager
          .deserialize<int?>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
      subcatagories: serializationManager
          .deserialize<List<_i2.Catagory>?>(jsonSerialization['subcatagories']),
    );
  }

  static final t = CatagoryTable();

  static const db = CatagoryRepository._();

  String name;

  String? desc;

  int? catagoryId;

  _i2.Catagory? catagory;

  List<_i2.Catagory>? subcatagories;

  @override
  _i1.Table get table => t;

  Catagory copyWith({
    int? id,
    String? name,
    String? desc,
    int? catagoryId,
    _i2.Catagory? catagory,
    List<_i2.Catagory>? subcatagories,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (desc != null) 'desc': desc,
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      if (subcatagories != null)
        'subcatagories': subcatagories?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'desc': desc,
      'catagoryId': catagoryId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (desc != null) 'desc': desc,
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.allToJson(),
      if (subcatagories != null)
        'subcatagories':
            subcatagories?.toJson(valueToJson: (v) => v.allToJson()),
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
      case 'name':
        name = value;
        return;
      case 'desc':
        desc = value;
        return;
      case 'catagoryId':
        catagoryId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Catagory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    CatagoryInclude? include,
  }) async {
    return session.db.find<Catagory>(
      where: where != null ? where(Catagory.t) : null,
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
  static Future<Catagory?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    CatagoryInclude? include,
  }) async {
    return session.db.findSingleRow<Catagory>(
      where: where != null ? where(Catagory.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Catagory?> findById(
    _i1.Session session,
    int id, {
    CatagoryInclude? include,
  }) async {
    return session.db.findById<Catagory>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CatagoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Catagory>(
      where: where(Catagory.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Catagory row, {
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
    Catagory row, {
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
    Catagory row, {
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
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Catagory>(
      where: where != null ? where(Catagory.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static CatagoryInclude include({
    _i2.CatagoryInclude? catagory,
    _i2.CatagoryIncludeList? subcatagories,
  }) {
    return CatagoryInclude._(
      catagory: catagory,
      subcatagories: subcatagories,
    );
  }

  static CatagoryIncludeList includeList({
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CatagoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CatagoryTable>? orderByList,
    CatagoryInclude? include,
  }) {
    return CatagoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Catagory.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Catagory.t),
      include: include,
    );
  }
}

class _Undefined {}

class _CatagoryImpl extends Catagory {
  _CatagoryImpl({
    int? id,
    required String name,
    String? desc,
    int? catagoryId,
    _i2.Catagory? catagory,
    List<_i2.Catagory>? subcatagories,
  }) : super._(
          id: id,
          name: name,
          desc: desc,
          catagoryId: catagoryId,
          catagory: catagory,
          subcatagories: subcatagories,
        );

  @override
  Catagory copyWith({
    Object? id = _Undefined,
    String? name,
    Object? desc = _Undefined,
    Object? catagoryId = _Undefined,
    Object? catagory = _Undefined,
    Object? subcatagories = _Undefined,
  }) {
    return Catagory(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      desc: desc is String? ? desc : this.desc,
      catagoryId: catagoryId is int? ? catagoryId : this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
      subcatagories: subcatagories is List<_i2.Catagory>?
          ? subcatagories
          : this.subcatagories?.clone(),
    );
  }
}

class CatagoryTable extends _i1.Table {
  CatagoryTable({super.tableRelation}) : super(tableName: 'catagory') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    desc = _i1.ColumnString(
      'desc',
      this,
    );
    catagoryId = _i1.ColumnInt(
      'catagoryId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString desc;

  late final _i1.ColumnInt catagoryId;

  _i2.CatagoryTable? _catagory;

  _i2.CatagoryTable? ___subcatagories;

  _i1.ManyRelation<_i2.CatagoryTable>? _subcatagories;

  _i2.CatagoryTable get catagory {
    if (_catagory != null) return _catagory!;
    _catagory = _i1.createRelationTable(
      relationFieldName: 'catagory',
      field: Catagory.t.catagoryId,
      foreignField: _i2.Catagory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return _catagory!;
  }

  _i2.CatagoryTable get __subcatagories {
    if (___subcatagories != null) return ___subcatagories!;
    ___subcatagories = _i1.createRelationTable(
      relationFieldName: '__subcatagories',
      field: Catagory.t.id,
      foreignField: _i2.Catagory.t.catagoryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return ___subcatagories!;
  }

  _i1.ManyRelation<_i2.CatagoryTable> get subcatagories {
    if (_subcatagories != null) return _subcatagories!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'subcatagories',
      field: Catagory.t.id,
      foreignField: _i2.Catagory.t.catagoryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    _subcatagories = _i1.ManyRelation<_i2.CatagoryTable>(
      tableWithRelations: relationTable,
      table: _i2.CatagoryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _subcatagories!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        desc,
        catagoryId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'catagory') {
      return catagory;
    }
    if (relationField == 'subcatagories') {
      return __subcatagories;
    }
    return null;
  }
}

@Deprecated('Use CatagoryTable.t instead.')
CatagoryTable tCatagory = CatagoryTable();

class CatagoryInclude extends _i1.IncludeObject {
  CatagoryInclude._({
    _i2.CatagoryInclude? catagory,
    _i2.CatagoryIncludeList? subcatagories,
  }) {
    _catagory = catagory;
    _subcatagories = subcatagories;
  }

  _i2.CatagoryInclude? _catagory;

  _i2.CatagoryIncludeList? _subcatagories;

  @override
  Map<String, _i1.Include?> get includes => {
        'catagory': _catagory,
        'subcatagories': _subcatagories,
      };

  @override
  _i1.Table get table => Catagory.t;
}

class CatagoryIncludeList extends _i1.IncludeList {
  CatagoryIncludeList._({
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Catagory.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Catagory.t;
}

class CatagoryRepository {
  const CatagoryRepository._();

  final attach = const CatagoryAttachRepository._();

  final attachRow = const CatagoryAttachRowRepository._();

  final detach = const CatagoryDetachRepository._();

  final detachRow = const CatagoryDetachRowRepository._();

  Future<List<Catagory>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CatagoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CatagoryTable>? orderByList,
    _i1.Transaction? transaction,
    CatagoryInclude? include,
  }) async {
    return session.dbNext.find<Catagory>(
      where: where?.call(Catagory.t),
      orderBy: orderBy?.call(Catagory.t),
      orderByList: orderByList?.call(Catagory.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Catagory?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<CatagoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CatagoryTable>? orderByList,
    _i1.Transaction? transaction,
    CatagoryInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Catagory>(
      where: where?.call(Catagory.t),
      orderBy: orderBy?.call(Catagory.t),
      orderByList: orderByList?.call(Catagory.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Catagory?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CatagoryInclude? include,
  }) async {
    return session.dbNext.findById<Catagory>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Catagory>> insert(
    _i1.Session session,
    List<Catagory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Catagory>(
      rows,
      transaction: transaction,
    );
  }

  Future<Catagory> insertRow(
    _i1.Session session,
    Catagory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Catagory>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Catagory>> update(
    _i1.Session session,
    List<Catagory> rows, {
    _i1.ColumnSelections<CatagoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Catagory>(
      rows,
      columns: columns?.call(Catagory.t),
      transaction: transaction,
    );
  }

  Future<Catagory> updateRow(
    _i1.Session session,
    Catagory row, {
    _i1.ColumnSelections<CatagoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Catagory>(
      row,
      columns: columns?.call(Catagory.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Catagory> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Catagory>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Catagory row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Catagory>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CatagoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Catagory>(
      where: where(Catagory.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CatagoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Catagory>(
      where: where?.call(Catagory.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CatagoryAttachRepository {
  const CatagoryAttachRepository._();

  Future<void> subcatagories(
    _i1.Session session,
    Catagory catagory,
    List<_i2.Catagory> nestedCatagory,
  ) async {
    if (nestedCatagory.any((e) => e.id == null)) {
      throw ArgumentError.notNull('nestedCatagory.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $nestedCatagory =
        nestedCatagory.map((e) => e.copyWith(catagoryId: catagory.id)).toList();
    await session.dbNext.update<_i2.Catagory>(
      $nestedCatagory,
      columns: [_i2.Catagory.t.catagoryId],
    );
  }
}

class CatagoryAttachRowRepository {
  const CatagoryAttachRowRepository._();

  Future<void> catagory(
    _i1.Session session,
    Catagory catagory,
    _i2.Catagory nestedCatagory,
  ) async {
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }
    if (nestedCatagory.id == null) {
      throw ArgumentError.notNull('nestedCatagory.id');
    }

    var $catagory = catagory.copyWith(catagoryId: nestedCatagory.id);
    await session.dbNext.updateRow<Catagory>(
      $catagory,
      columns: [Catagory.t.catagoryId],
    );
  }

  Future<void> subcatagories(
    _i1.Session session,
    Catagory catagory,
    _i2.Catagory nestedCatagory,
  ) async {
    if (nestedCatagory.id == null) {
      throw ArgumentError.notNull('nestedCatagory.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $nestedCatagory = nestedCatagory.copyWith(catagoryId: catagory.id);
    await session.dbNext.updateRow<_i2.Catagory>(
      $nestedCatagory,
      columns: [_i2.Catagory.t.catagoryId],
    );
  }
}

class CatagoryDetachRepository {
  const CatagoryDetachRepository._();

  Future<void> subcatagories(
    _i1.Session session,
    List<_i2.Catagory> catagory,
  ) async {
    if (catagory.any((e) => e.id == null)) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $catagory = catagory.map((e) => e.copyWith(catagoryId: null)).toList();
    await session.dbNext.update<_i2.Catagory>(
      $catagory,
      columns: [_i2.Catagory.t.catagoryId],
    );
  }
}

class CatagoryDetachRowRepository {
  const CatagoryDetachRowRepository._();

  Future<void> catagory(
    _i1.Session session,
    Catagory catagory,
  ) async {
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $catagory = catagory.copyWith(catagoryId: null);
    await session.dbNext.updateRow<Catagory>(
      $catagory,
      columns: [Catagory.t.catagoryId],
    );
  }

  Future<void> subcatagories(
    _i1.Session session,
    _i2.Catagory catagory,
  ) async {
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $catagory = catagory.copyWith(catagoryId: null);
    await session.dbNext.updateRow<_i2.Catagory>(
      $catagory,
      columns: [_i2.Catagory.t.catagoryId],
    );
  }
}
