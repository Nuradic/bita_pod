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

abstract class Brand extends _i1.TableRow {
  Brand._({
    int? id,
    required this.name,
    required this.desc,
    required this.catagoryId,
    this.catagory,
  }) : super(id);

  factory Brand({
    int? id,
    required String name,
    required String desc,
    required int catagoryId,
    _i2.Catagory? catagory,
  }) = _BrandImpl;

  factory Brand.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Brand(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      desc: serializationManager.deserialize<String>(jsonSerialization['desc']),
      catagoryId: serializationManager
          .deserialize<int>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
    );
  }

  static final t = BrandTable();

  static const db = BrandRepository._();

  String name;

  String desc;

  int catagoryId;

  _i2.Catagory? catagory;

  @override
  _i1.Table get table => t;

  Brand copyWith({
    int? id,
    String? name,
    String? desc,
    int? catagoryId,
    _i2.Catagory? catagory,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'desc': desc,
      'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
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
      'desc': desc,
      'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.allToJson(),
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
  static Future<List<Brand>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.db.find<Brand>(
      where: where != null ? where(Brand.t) : null,
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
  static Future<Brand?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.db.findSingleRow<Brand>(
      where: where != null ? where(Brand.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Brand?> findById(
    _i1.Session session,
    int id, {
    BrandInclude? include,
  }) async {
    return session.db.findById<Brand>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BrandTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Brand>(
      where: where(Brand.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Brand row, {
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
    Brand row, {
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
    Brand row, {
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
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Brand>(
      where: where != null ? where(Brand.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BrandInclude include({_i2.CatagoryInclude? catagory}) {
    return BrandInclude._(catagory: catagory);
  }

  static BrandIncludeList includeList({
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    BrandInclude? include,
  }) {
    return BrandIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Brand.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Brand.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BrandImpl extends Brand {
  _BrandImpl({
    int? id,
    required String name,
    required String desc,
    required int catagoryId,
    _i2.Catagory? catagory,
  }) : super._(
          id: id,
          name: name,
          desc: desc,
          catagoryId: catagoryId,
          catagory: catagory,
        );

  @override
  Brand copyWith({
    Object? id = _Undefined,
    String? name,
    String? desc,
    int? catagoryId,
    Object? catagory = _Undefined,
  }) {
    return Brand(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      desc: desc ?? this.desc,
      catagoryId: catagoryId ?? this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
    );
  }
}

class BrandTable extends _i1.Table {
  BrandTable({super.tableRelation}) : super(tableName: 'brand') {
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

  _i2.CatagoryTable get catagory {
    if (_catagory != null) return _catagory!;
    _catagory = _i1.createRelationTable(
      relationFieldName: 'catagory',
      field: Brand.t.catagoryId,
      foreignField: _i2.Catagory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return _catagory!;
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
    return null;
  }
}

@Deprecated('Use BrandTable.t instead.')
BrandTable tBrand = BrandTable();

class BrandInclude extends _i1.IncludeObject {
  BrandInclude._({_i2.CatagoryInclude? catagory}) {
    _catagory = catagory;
  }

  _i2.CatagoryInclude? _catagory;

  @override
  Map<String, _i1.Include?> get includes => {'catagory': _catagory};

  @override
  _i1.Table get table => Brand.t;
}

class BrandIncludeList extends _i1.IncludeList {
  BrandIncludeList._({
    _i1.WhereExpressionBuilder<BrandTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Brand.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Brand.t;
}

class BrandRepository {
  const BrandRepository._();

  final attachRow = const BrandAttachRowRepository._();

  Future<List<Brand>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.dbNext.find<Brand>(
      where: where?.call(Brand.t),
      orderBy: orderBy?.call(Brand.t),
      orderByList: orderByList?.call(Brand.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Brand?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? offset,
    _i1.OrderByBuilder<BrandTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BrandTable>? orderByList,
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Brand>(
      where: where?.call(Brand.t),
      orderBy: orderBy?.call(Brand.t),
      orderByList: orderByList?.call(Brand.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Brand?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BrandInclude? include,
  }) async {
    return session.dbNext.findById<Brand>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Brand>> insert(
    _i1.Session session,
    List<Brand> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Brand>(
      rows,
      transaction: transaction,
    );
  }

  Future<Brand> insertRow(
    _i1.Session session,
    Brand row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Brand>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Brand>> update(
    _i1.Session session,
    List<Brand> rows, {
    _i1.ColumnSelections<BrandTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Brand>(
      rows,
      columns: columns?.call(Brand.t),
      transaction: transaction,
    );
  }

  Future<Brand> updateRow(
    _i1.Session session,
    Brand row, {
    _i1.ColumnSelections<BrandTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Brand>(
      row,
      columns: columns?.call(Brand.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Brand> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Brand>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Brand row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Brand>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BrandTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Brand>(
      where: where(Brand.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BrandTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Brand>(
      where: where?.call(Brand.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BrandAttachRowRepository {
  const BrandAttachRowRepository._();

  Future<void> catagory(
    _i1.Session session,
    Brand brand,
    _i2.Catagory catagory,
  ) async {
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $brand = brand.copyWith(catagoryId: catagory.id);
    await session.dbNext.updateRow<Brand>(
      $brand,
      columns: [Brand.t.catagoryId],
    );
  }
}
