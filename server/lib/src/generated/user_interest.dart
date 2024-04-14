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

abstract class UserInterest extends _i1.TableRow {
  UserInterest._({
    int? id,
    required this.catagoryId,
    this.catagory,
    required this.userId,
    this.user,
  }) : super(id);

  factory UserInterest({
    int? id,
    required int catagoryId,
    _i2.Catagory? catagory,
    required int userId,
    _i3.UserInfo? user,
  }) = _UserInterestImpl;

  factory UserInterest.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return UserInterest(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      catagoryId: serializationManager
          .deserialize<int>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
      userId:
          serializationManager.deserialize<int>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['user']),
    );
  }

  static final t = UserInterestTable();

  static const db = UserInterestRepository._();

  int catagoryId;

  _i2.Catagory? catagory;

  int userId;

  _i3.UserInfo? user;

  @override
  _i1.Table get table => t;

  UserInterest copyWith({
    int? id,
    int? catagoryId,
    _i2.Catagory? catagory,
    int? userId,
    _i3.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'catagoryId': catagoryId,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.allToJson(),
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
      case 'catagoryId':
        catagoryId = value;
        return;
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<UserInterest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInterestInclude? include,
  }) async {
    return session.db.find<UserInterest>(
      where: where != null ? where(UserInterest.t) : null,
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
  static Future<UserInterest?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    UserInterestInclude? include,
  }) async {
    return session.db.findSingleRow<UserInterest>(
      where: where != null ? where(UserInterest.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<UserInterest?> findById(
    _i1.Session session,
    int id, {
    UserInterestInclude? include,
  }) async {
    return session.db.findById<UserInterest>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserInterestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserInterest>(
      where: where(UserInterest.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    UserInterest row, {
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
    UserInterest row, {
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
    UserInterest row, {
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
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserInterest>(
      where: where != null ? where(UserInterest.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static UserInterestInclude include({
    _i2.CatagoryInclude? catagory,
    _i3.UserInfoInclude? user,
  }) {
    return UserInterestInclude._(
      catagory: catagory,
      user: user,
    );
  }

  static UserInterestIncludeList includeList({
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInterestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInterestTable>? orderByList,
    UserInterestInclude? include,
  }) {
    return UserInterestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserInterest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserInterest.t),
      include: include,
    );
  }
}

class _Undefined {}

class _UserInterestImpl extends UserInterest {
  _UserInterestImpl({
    int? id,
    required int catagoryId,
    _i2.Catagory? catagory,
    required int userId,
    _i3.UserInfo? user,
  }) : super._(
          id: id,
          catagoryId: catagoryId,
          catagory: catagory,
          userId: userId,
          user: user,
        );

  @override
  UserInterest copyWith({
    Object? id = _Undefined,
    int? catagoryId,
    Object? catagory = _Undefined,
    int? userId,
    Object? user = _Undefined,
  }) {
    return UserInterest(
      id: id is int? ? id : this.id,
      catagoryId: catagoryId ?? this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
      userId: userId ?? this.userId,
      user: user is _i3.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}

class UserInterestTable extends _i1.Table {
  UserInterestTable({super.tableRelation}) : super(tableName: 'user_interest') {
    catagoryId = _i1.ColumnInt(
      'catagoryId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnInt catagoryId;

  _i2.CatagoryTable? _catagory;

  late final _i1.ColumnInt userId;

  _i3.UserInfoTable? _user;

  _i2.CatagoryTable get catagory {
    if (_catagory != null) return _catagory!;
    _catagory = _i1.createRelationTable(
      relationFieldName: 'catagory',
      field: UserInterest.t.catagoryId,
      foreignField: _i2.Catagory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return _catagory!;
  }

  _i3.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: UserInterest.t.userId,
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
        catagoryId,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'catagory') {
      return catagory;
    }
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use UserInterestTable.t instead.')
UserInterestTable tUserInterest = UserInterestTable();

class UserInterestInclude extends _i1.IncludeObject {
  UserInterestInclude._({
    _i2.CatagoryInclude? catagory,
    _i3.UserInfoInclude? user,
  }) {
    _catagory = catagory;
    _user = user;
  }

  _i2.CatagoryInclude? _catagory;

  _i3.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {
        'catagory': _catagory,
        'user': _user,
      };

  @override
  _i1.Table get table => UserInterest.t;
}

class UserInterestIncludeList extends _i1.IncludeList {
  UserInterestIncludeList._({
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserInterest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => UserInterest.t;
}

class UserInterestRepository {
  const UserInterestRepository._();

  final attachRow = const UserInterestAttachRowRepository._();

  Future<List<UserInterest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserInterestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInterestTable>? orderByList,
    _i1.Transaction? transaction,
    UserInterestInclude? include,
  }) async {
    return session.dbNext.find<UserInterest>(
      where: where?.call(UserInterest.t),
      orderBy: orderBy?.call(UserInterest.t),
      orderByList: orderByList?.call(UserInterest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserInterest?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserInterestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserInterestTable>? orderByList,
    _i1.Transaction? transaction,
    UserInterestInclude? include,
  }) async {
    return session.dbNext.findFirstRow<UserInterest>(
      where: where?.call(UserInterest.t),
      orderBy: orderBy?.call(UserInterest.t),
      orderByList: orderByList?.call(UserInterest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<UserInterest?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    UserInterestInclude? include,
  }) async {
    return session.dbNext.findById<UserInterest>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<UserInterest>> insert(
    _i1.Session session,
    List<UserInterest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<UserInterest>(
      rows,
      transaction: transaction,
    );
  }

  Future<UserInterest> insertRow(
    _i1.Session session,
    UserInterest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<UserInterest>(
      row,
      transaction: transaction,
    );
  }

  Future<List<UserInterest>> update(
    _i1.Session session,
    List<UserInterest> rows, {
    _i1.ColumnSelections<UserInterestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<UserInterest>(
      rows,
      columns: columns?.call(UserInterest.t),
      transaction: transaction,
    );
  }

  Future<UserInterest> updateRow(
    _i1.Session session,
    UserInterest row, {
    _i1.ColumnSelections<UserInterestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<UserInterest>(
      row,
      columns: columns?.call(UserInterest.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<UserInterest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<UserInterest>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    UserInterest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<UserInterest>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserInterestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<UserInterest>(
      where: where(UserInterest.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserInterestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<UserInterest>(
      where: where?.call(UserInterest.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class UserInterestAttachRowRepository {
  const UserInterestAttachRowRepository._();

  Future<void> catagory(
    _i1.Session session,
    UserInterest userInterest,
    _i2.Catagory catagory,
  ) async {
    if (userInterest.id == null) {
      throw ArgumentError.notNull('userInterest.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $userInterest = userInterest.copyWith(catagoryId: catagory.id);
    await session.dbNext.updateRow<UserInterest>(
      $userInterest,
      columns: [UserInterest.t.catagoryId],
    );
  }

  Future<void> user(
    _i1.Session session,
    UserInterest userInterest,
    _i3.UserInfo user,
  ) async {
    if (userInterest.id == null) {
      throw ArgumentError.notNull('userInterest.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $userInterest = userInterest.copyWith(userId: user.id);
    await session.dbNext.updateRow<UserInterest>(
      $userInterest,
      columns: [UserInterest.t.userId],
    );
  }
}
