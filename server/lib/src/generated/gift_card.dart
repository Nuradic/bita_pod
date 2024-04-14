/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/module.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class GiftCard extends _i1.TableRow {
  GiftCard._({
    int? id,
    required this.ownerId,
    this.owner,
    this.createdById,
    this.createdBy,
    required this.reedemed,
    this.expireDate,
    required this.createdAt,
  }) : super(id);

  factory GiftCard({
    int? id,
    required int ownerId,
    _i2.UserInfo? owner,
    int? createdById,
    _i2.UserInfo? createdBy,
    required bool reedemed,
    DateTime? expireDate,
    required DateTime createdAt,
  }) = _GiftCardImpl;

  factory GiftCard.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return GiftCard(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      owner: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['owner']),
      createdById: serializationManager
          .deserialize<int?>(jsonSerialization['createdById']),
      createdBy: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['createdBy']),
      reedemed:
          serializationManager.deserialize<bool>(jsonSerialization['reedemed']),
      expireDate: serializationManager
          .deserialize<DateTime?>(jsonSerialization['expireDate']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  static final t = GiftCardTable();

  static const db = GiftCardRepository._();

  int ownerId;

  _i2.UserInfo? owner;

  int? createdById;

  _i2.UserInfo? createdBy;

  bool reedemed;

  DateTime? expireDate;

  DateTime createdAt;

  @override
  _i1.Table get table => t;

  GiftCard copyWith({
    int? id,
    int? ownerId,
    _i2.UserInfo? owner,
    int? createdById,
    _i2.UserInfo? createdBy,
    bool? reedemed,
    DateTime? expireDate,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      if (createdById != null) 'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.toJson(),
      'reedemed': reedemed,
      if (expireDate != null) 'expireDate': expireDate?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'ownerId': ownerId,
      'createdById': createdById,
      'reedemed': reedemed,
      'expireDate': expireDate,
      'createdAt': createdAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.allToJson(),
      if (createdById != null) 'createdById': createdById,
      if (createdBy != null) 'createdBy': createdBy?.allToJson(),
      'reedemed': reedemed,
      if (expireDate != null) 'expireDate': expireDate?.toJson(),
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
      case 'ownerId':
        ownerId = value;
        return;
      case 'createdById':
        createdById = value;
        return;
      case 'reedemed':
        reedemed = value;
        return;
      case 'expireDate':
        expireDate = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<GiftCard>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    GiftCardInclude? include,
  }) async {
    return session.db.find<GiftCard>(
      where: where != null ? where(GiftCard.t) : null,
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
  static Future<GiftCard?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    GiftCardInclude? include,
  }) async {
    return session.db.findSingleRow<GiftCard>(
      where: where != null ? where(GiftCard.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<GiftCard?> findById(
    _i1.Session session,
    int id, {
    GiftCardInclude? include,
  }) async {
    return session.db.findById<GiftCard>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GiftCardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GiftCard>(
      where: where(GiftCard.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    GiftCard row, {
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
    GiftCard row, {
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
    GiftCard row, {
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
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GiftCard>(
      where: where != null ? where(GiftCard.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static GiftCardInclude include({
    _i2.UserInfoInclude? owner,
    _i2.UserInfoInclude? createdBy,
  }) {
    return GiftCardInclude._(
      owner: owner,
      createdBy: createdBy,
    );
  }

  static GiftCardIncludeList includeList({
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GiftCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GiftCardTable>? orderByList,
    GiftCardInclude? include,
  }) {
    return GiftCardIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GiftCard.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GiftCard.t),
      include: include,
    );
  }
}

class _Undefined {}

class _GiftCardImpl extends GiftCard {
  _GiftCardImpl({
    int? id,
    required int ownerId,
    _i2.UserInfo? owner,
    int? createdById,
    _i2.UserInfo? createdBy,
    required bool reedemed,
    DateTime? expireDate,
    required DateTime createdAt,
  }) : super._(
          id: id,
          ownerId: ownerId,
          owner: owner,
          createdById: createdById,
          createdBy: createdBy,
          reedemed: reedemed,
          expireDate: expireDate,
          createdAt: createdAt,
        );

  @override
  GiftCard copyWith({
    Object? id = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    Object? createdById = _Undefined,
    Object? createdBy = _Undefined,
    bool? reedemed,
    Object? expireDate = _Undefined,
    DateTime? createdAt,
  }) {
    return GiftCard(
      id: id is int? ? id : this.id,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.UserInfo? ? owner : this.owner?.copyWith(),
      createdById: createdById is int? ? createdById : this.createdById,
      createdBy:
          createdBy is _i2.UserInfo? ? createdBy : this.createdBy?.copyWith(),
      reedemed: reedemed ?? this.reedemed,
      expireDate: expireDate is DateTime? ? expireDate : this.expireDate,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

class GiftCardTable extends _i1.Table {
  GiftCardTable({super.tableRelation}) : super(tableName: 'gift_card') {
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
    createdById = _i1.ColumnInt(
      'createdById',
      this,
    );
    reedemed = _i1.ColumnBool(
      'reedemed',
      this,
    );
    expireDate = _i1.ColumnDateTime(
      'expireDate',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt ownerId;

  _i2.UserInfoTable? _owner;

  late final _i1.ColumnInt createdById;

  _i2.UserInfoTable? _createdBy;

  late final _i1.ColumnBool reedemed;

  late final _i1.ColumnDateTime expireDate;

  late final _i1.ColumnDateTime createdAt;

  _i2.UserInfoTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: GiftCard.t.ownerId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i2.UserInfoTable get createdBy {
    if (_createdBy != null) return _createdBy!;
    _createdBy = _i1.createRelationTable(
      relationFieldName: 'createdBy',
      field: GiftCard.t.createdById,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _createdBy!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        ownerId,
        createdById,
        reedemed,
        expireDate,
        createdAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'createdBy') {
      return createdBy;
    }
    return null;
  }
}

@Deprecated('Use GiftCardTable.t instead.')
GiftCardTable tGiftCard = GiftCardTable();

class GiftCardInclude extends _i1.IncludeObject {
  GiftCardInclude._({
    _i2.UserInfoInclude? owner,
    _i2.UserInfoInclude? createdBy,
  }) {
    _owner = owner;
    _createdBy = createdBy;
  }

  _i2.UserInfoInclude? _owner;

  _i2.UserInfoInclude? _createdBy;

  @override
  Map<String, _i1.Include?> get includes => {
        'owner': _owner,
        'createdBy': _createdBy,
      };

  @override
  _i1.Table get table => GiftCard.t;
}

class GiftCardIncludeList extends _i1.IncludeList {
  GiftCardIncludeList._({
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GiftCard.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => GiftCard.t;
}

class GiftCardRepository {
  const GiftCardRepository._();

  final attachRow = const GiftCardAttachRowRepository._();

  final detachRow = const GiftCardDetachRowRepository._();

  Future<List<GiftCard>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GiftCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GiftCardTable>? orderByList,
    _i1.Transaction? transaction,
    GiftCardInclude? include,
  }) async {
    return session.dbNext.find<GiftCard>(
      where: where?.call(GiftCard.t),
      orderBy: orderBy?.call(GiftCard.t),
      orderByList: orderByList?.call(GiftCard.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<GiftCard?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? offset,
    _i1.OrderByBuilder<GiftCardTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GiftCardTable>? orderByList,
    _i1.Transaction? transaction,
    GiftCardInclude? include,
  }) async {
    return session.dbNext.findFirstRow<GiftCard>(
      where: where?.call(GiftCard.t),
      orderBy: orderBy?.call(GiftCard.t),
      orderByList: orderByList?.call(GiftCard.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<GiftCard?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    GiftCardInclude? include,
  }) async {
    return session.dbNext.findById<GiftCard>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<GiftCard>> insert(
    _i1.Session session,
    List<GiftCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<GiftCard>(
      rows,
      transaction: transaction,
    );
  }

  Future<GiftCard> insertRow(
    _i1.Session session,
    GiftCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<GiftCard>(
      row,
      transaction: transaction,
    );
  }

  Future<List<GiftCard>> update(
    _i1.Session session,
    List<GiftCard> rows, {
    _i1.ColumnSelections<GiftCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<GiftCard>(
      rows,
      columns: columns?.call(GiftCard.t),
      transaction: transaction,
    );
  }

  Future<GiftCard> updateRow(
    _i1.Session session,
    GiftCard row, {
    _i1.ColumnSelections<GiftCardTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<GiftCard>(
      row,
      columns: columns?.call(GiftCard.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<GiftCard> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<GiftCard>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    GiftCard row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<GiftCard>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GiftCardTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<GiftCard>(
      where: where(GiftCard.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GiftCardTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<GiftCard>(
      where: where?.call(GiftCard.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class GiftCardAttachRowRepository {
  const GiftCardAttachRowRepository._();

  Future<void> owner(
    _i1.Session session,
    GiftCard giftCard,
    _i2.UserInfo owner,
  ) async {
    if (giftCard.id == null) {
      throw ArgumentError.notNull('giftCard.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $giftCard = giftCard.copyWith(ownerId: owner.id);
    await session.dbNext.updateRow<GiftCard>(
      $giftCard,
      columns: [GiftCard.t.ownerId],
    );
  }

  Future<void> createdBy(
    _i1.Session session,
    GiftCard giftCard,
    _i2.UserInfo createdBy,
  ) async {
    if (giftCard.id == null) {
      throw ArgumentError.notNull('giftCard.id');
    }
    if (createdBy.id == null) {
      throw ArgumentError.notNull('createdBy.id');
    }

    var $giftCard = giftCard.copyWith(createdById: createdBy.id);
    await session.dbNext.updateRow<GiftCard>(
      $giftCard,
      columns: [GiftCard.t.createdById],
    );
  }
}

class GiftCardDetachRowRepository {
  const GiftCardDetachRowRepository._();

  Future<void> createdBy(
    _i1.Session session,
    GiftCard giftcard,
  ) async {
    if (giftcard.id == null) {
      throw ArgumentError.notNull('giftcard.id');
    }

    var $giftcard = giftcard.copyWith(createdById: null);
    await session.dbNext.updateRow<GiftCard>(
      $giftcard,
      columns: [GiftCard.t.createdById],
    );
  }
}
