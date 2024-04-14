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

abstract class BackgroundInfo extends _i1.TableRow {
  BackgroundInfo._({
    int? id,
    this.phoneNumber,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.userId,
    this.user,
  }) : super(id);

  factory BackgroundInfo({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  }) = _BackgroundInfoImpl;

  factory BackgroundInfo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BackgroundInfo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      phoneNumber: serializationManager
          .deserialize<String?>(jsonSerialization['phoneNumber']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      password: serializationManager
          .deserialize<String?>(jsonSerialization['password']),
      firstName: serializationManager
          .deserialize<String?>(jsonSerialization['firstName']),
      lastName: serializationManager
          .deserialize<String?>(jsonSerialization['lastName']),
      userId:
          serializationManager.deserialize<int?>(jsonSerialization['userId']),
      user: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['user']),
    );
  }

  static final t = BackgroundInfoTable();

  static const db = BackgroundInfoRepository._();

  String? phoneNumber;

  String? email;

  String? password;

  String? firstName;

  String? lastName;

  int? userId;

  _i2.UserInfo? user;

  @override
  _i1.Table get table => t;

  BackgroundInfo copyWith({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
      if (userId != null) 'userId': userId,
      if (user != null) 'user': user?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'userId': userId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (firstName != null) 'firstName': firstName,
      if (lastName != null) 'lastName': lastName,
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
      case 'phoneNumber':
        phoneNumber = value;
        return;
      case 'email':
        email = value;
        return;
      case 'password':
        password = value;
        return;
      case 'firstName':
        firstName = value;
        return;
      case 'lastName':
        lastName = value;
        return;
      case 'userId':
        userId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BackgroundInfo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BackgroundInfoInclude? include,
  }) async {
    return session.db.find<BackgroundInfo>(
      where: where != null ? where(BackgroundInfo.t) : null,
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
  static Future<BackgroundInfo?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BackgroundInfoInclude? include,
  }) async {
    return session.db.findSingleRow<BackgroundInfo>(
      where: where != null ? where(BackgroundInfo.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BackgroundInfo?> findById(
    _i1.Session session,
    int id, {
    BackgroundInfoInclude? include,
  }) async {
    return session.db.findById<BackgroundInfo>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BackgroundInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BackgroundInfo>(
      where: where(BackgroundInfo.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BackgroundInfo row, {
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
    BackgroundInfo row, {
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
    BackgroundInfo row, {
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
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BackgroundInfo>(
      where: where != null ? where(BackgroundInfo.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BackgroundInfoInclude include({_i2.UserInfoInclude? user}) {
    return BackgroundInfoInclude._(user: user);
  }

  static BackgroundInfoIncludeList includeList({
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BackgroundInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BackgroundInfoTable>? orderByList,
    BackgroundInfoInclude? include,
  }) {
    return BackgroundInfoIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BackgroundInfo.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BackgroundInfo.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BackgroundInfoImpl extends BackgroundInfo {
  _BackgroundInfoImpl({
    int? id,
    String? phoneNumber,
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    int? userId,
    _i2.UserInfo? user,
  }) : super._(
          id: id,
          phoneNumber: phoneNumber,
          email: email,
          password: password,
          firstName: firstName,
          lastName: lastName,
          userId: userId,
          user: user,
        );

  @override
  BackgroundInfo copyWith({
    Object? id = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    Object? password = _Undefined,
    Object? firstName = _Undefined,
    Object? lastName = _Undefined,
    Object? userId = _Undefined,
    Object? user = _Undefined,
  }) {
    return BackgroundInfo(
      id: id is int? ? id : this.id,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      password: password is String? ? password : this.password,
      firstName: firstName is String? ? firstName : this.firstName,
      lastName: lastName is String? ? lastName : this.lastName,
      userId: userId is int? ? userId : this.userId,
      user: user is _i2.UserInfo? ? user : this.user?.copyWith(),
    );
  }
}

class BackgroundInfoTable extends _i1.Table {
  BackgroundInfoTable({super.tableRelation})
      : super(tableName: 'background_info') {
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    password = _i1.ColumnString(
      'password',
      this,
    );
    firstName = _i1.ColumnString(
      'firstName',
      this,
    );
    lastName = _i1.ColumnString(
      'lastName',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
  }

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString email;

  late final _i1.ColumnString password;

  late final _i1.ColumnString firstName;

  late final _i1.ColumnString lastName;

  late final _i1.ColumnInt userId;

  _i2.UserInfoTable? _user;

  _i2.UserInfoTable get user {
    if (_user != null) return _user!;
    _user = _i1.createRelationTable(
      relationFieldName: 'user',
      field: BackgroundInfo.t.userId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _user!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        phoneNumber,
        email,
        password,
        firstName,
        lastName,
        userId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'user') {
      return user;
    }
    return null;
  }
}

@Deprecated('Use BackgroundInfoTable.t instead.')
BackgroundInfoTable tBackgroundInfo = BackgroundInfoTable();

class BackgroundInfoInclude extends _i1.IncludeObject {
  BackgroundInfoInclude._({_i2.UserInfoInclude? user}) {
    _user = user;
  }

  _i2.UserInfoInclude? _user;

  @override
  Map<String, _i1.Include?> get includes => {'user': _user};

  @override
  _i1.Table get table => BackgroundInfo.t;
}

class BackgroundInfoIncludeList extends _i1.IncludeList {
  BackgroundInfoIncludeList._({
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BackgroundInfo.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BackgroundInfo.t;
}

class BackgroundInfoRepository {
  const BackgroundInfoRepository._();

  final attachRow = const BackgroundInfoAttachRowRepository._();

  final detachRow = const BackgroundInfoDetachRowRepository._();

  Future<List<BackgroundInfo>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BackgroundInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BackgroundInfoTable>? orderByList,
    _i1.Transaction? transaction,
    BackgroundInfoInclude? include,
  }) async {
    return session.dbNext.find<BackgroundInfo>(
      where: where?.call(BackgroundInfo.t),
      orderBy: orderBy?.call(BackgroundInfo.t),
      orderByList: orderByList?.call(BackgroundInfo.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BackgroundInfo?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? offset,
    _i1.OrderByBuilder<BackgroundInfoTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BackgroundInfoTable>? orderByList,
    _i1.Transaction? transaction,
    BackgroundInfoInclude? include,
  }) async {
    return session.dbNext.findFirstRow<BackgroundInfo>(
      where: where?.call(BackgroundInfo.t),
      orderBy: orderBy?.call(BackgroundInfo.t),
      orderByList: orderByList?.call(BackgroundInfo.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<BackgroundInfo?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BackgroundInfoInclude? include,
  }) async {
    return session.dbNext.findById<BackgroundInfo>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<BackgroundInfo>> insert(
    _i1.Session session,
    List<BackgroundInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BackgroundInfo>(
      rows,
      transaction: transaction,
    );
  }

  Future<BackgroundInfo> insertRow(
    _i1.Session session,
    BackgroundInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BackgroundInfo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BackgroundInfo>> update(
    _i1.Session session,
    List<BackgroundInfo> rows, {
    _i1.ColumnSelections<BackgroundInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BackgroundInfo>(
      rows,
      columns: columns?.call(BackgroundInfo.t),
      transaction: transaction,
    );
  }

  Future<BackgroundInfo> updateRow(
    _i1.Session session,
    BackgroundInfo row, {
    _i1.ColumnSelections<BackgroundInfoTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BackgroundInfo>(
      row,
      columns: columns?.call(BackgroundInfo.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BackgroundInfo> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BackgroundInfo>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BackgroundInfo row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BackgroundInfo>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BackgroundInfoTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BackgroundInfo>(
      where: where(BackgroundInfo.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BackgroundInfoTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BackgroundInfo>(
      where: where?.call(BackgroundInfo.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BackgroundInfoAttachRowRepository {
  const BackgroundInfoAttachRowRepository._();

  Future<void> user(
    _i1.Session session,
    BackgroundInfo backgroundInfo,
    _i2.UserInfo user,
  ) async {
    if (backgroundInfo.id == null) {
      throw ArgumentError.notNull('backgroundInfo.id');
    }
    if (user.id == null) {
      throw ArgumentError.notNull('user.id');
    }

    var $backgroundInfo = backgroundInfo.copyWith(userId: user.id);
    await session.dbNext.updateRow<BackgroundInfo>(
      $backgroundInfo,
      columns: [BackgroundInfo.t.userId],
    );
  }
}

class BackgroundInfoDetachRowRepository {
  const BackgroundInfoDetachRowRepository._();

  Future<void> user(
    _i1.Session session,
    BackgroundInfo backgroundinfo,
  ) async {
    if (backgroundinfo.id == null) {
      throw ArgumentError.notNull('backgroundinfo.id');
    }

    var $backgroundinfo = backgroundinfo.copyWith(userId: null);
    await session.dbNext.updateRow<BackgroundInfo>(
      $backgroundinfo,
      columns: [BackgroundInfo.t.userId],
    );
  }
}
