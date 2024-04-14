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

abstract class SignUpRequest extends _i1.TableRow {
  SignUpRequest._({
    int? id,
    this.phoneNumber,
    this.email,
    this.emailOtp,
    this.phoneOtp,
    this.isPhoneVerified,
    this.isEmailVerified,
    this.status,
  }) : super(id);

  factory SignUpRequest({
    int? id,
    String? phoneNumber,
    String? email,
    String? emailOtp,
    String? phoneOtp,
    bool? isPhoneVerified,
    bool? isEmailVerified,
    _i2.UserStatus? status,
  }) = _SignUpRequestImpl;

  factory SignUpRequest.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return SignUpRequest(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      phoneNumber: serializationManager
          .deserialize<String?>(jsonSerialization['phoneNumber']),
      email:
          serializationManager.deserialize<String?>(jsonSerialization['email']),
      emailOtp: serializationManager
          .deserialize<String?>(jsonSerialization['emailOtp']),
      phoneOtp: serializationManager
          .deserialize<String?>(jsonSerialization['phoneOtp']),
      isPhoneVerified: serializationManager
          .deserialize<bool?>(jsonSerialization['isPhoneVerified']),
      isEmailVerified: serializationManager
          .deserialize<bool?>(jsonSerialization['isEmailVerified']),
      status: serializationManager
          .deserialize<_i2.UserStatus?>(jsonSerialization['status']),
    );
  }

  static final t = SignUpRequestTable();

  static const db = SignUpRequestRepository._();

  String? phoneNumber;

  String? email;

  String? emailOtp;

  String? phoneOtp;

  bool? isPhoneVerified;

  bool? isEmailVerified;

  _i2.UserStatus? status;

  @override
  _i1.Table get table => t;

  SignUpRequest copyWith({
    int? id,
    String? phoneNumber,
    String? email,
    String? emailOtp,
    String? phoneOtp,
    bool? isPhoneVerified,
    bool? isEmailVerified,
    _i2.UserStatus? status,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      if (emailOtp != null) 'emailOtp': emailOtp,
      if (phoneOtp != null) 'phoneOtp': phoneOtp,
      if (isPhoneVerified != null) 'isPhoneVerified': isPhoneVerified,
      if (isEmailVerified != null) 'isEmailVerified': isEmailVerified,
      if (status != null) 'status': status?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'phoneNumber': phoneNumber,
      'email': email,
      'emailOtp': emailOtp,
      'phoneOtp': phoneOtp,
      'isPhoneVerified': isPhoneVerified,
      'isEmailVerified': isEmailVerified,
      'status': status,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (email != null) 'email': email,
      if (emailOtp != null) 'emailOtp': emailOtp,
      if (phoneOtp != null) 'phoneOtp': phoneOtp,
      if (isPhoneVerified != null) 'isPhoneVerified': isPhoneVerified,
      if (isEmailVerified != null) 'isEmailVerified': isEmailVerified,
      if (status != null) 'status': status?.toJson(),
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
      case 'emailOtp':
        emailOtp = value;
        return;
      case 'phoneOtp':
        phoneOtp = value;
        return;
      case 'isPhoneVerified':
        isPhoneVerified = value;
        return;
      case 'isEmailVerified':
        isEmailVerified = value;
        return;
      case 'status':
        status = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<SignUpRequest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SignUpRequest>(
      where: where != null ? where(SignUpRequest.t) : null,
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
  static Future<SignUpRequest?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<SignUpRequest>(
      where: where != null ? where(SignUpRequest.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<SignUpRequest?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<SignUpRequest>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SignUpRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SignUpRequest>(
      where: where(SignUpRequest.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    SignUpRequest row, {
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
    SignUpRequest row, {
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
    SignUpRequest row, {
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
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SignUpRequest>(
      where: where != null ? where(SignUpRequest.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static SignUpRequestInclude include() {
    return SignUpRequestInclude._();
  }

  static SignUpRequestIncludeList includeList({
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SignUpRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SignUpRequestTable>? orderByList,
    SignUpRequestInclude? include,
  }) {
    return SignUpRequestIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SignUpRequest.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SignUpRequest.t),
      include: include,
    );
  }
}

class _Undefined {}

class _SignUpRequestImpl extends SignUpRequest {
  _SignUpRequestImpl({
    int? id,
    String? phoneNumber,
    String? email,
    String? emailOtp,
    String? phoneOtp,
    bool? isPhoneVerified,
    bool? isEmailVerified,
    _i2.UserStatus? status,
  }) : super._(
          id: id,
          phoneNumber: phoneNumber,
          email: email,
          emailOtp: emailOtp,
          phoneOtp: phoneOtp,
          isPhoneVerified: isPhoneVerified,
          isEmailVerified: isEmailVerified,
          status: status,
        );

  @override
  SignUpRequest copyWith({
    Object? id = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? email = _Undefined,
    Object? emailOtp = _Undefined,
    Object? phoneOtp = _Undefined,
    Object? isPhoneVerified = _Undefined,
    Object? isEmailVerified = _Undefined,
    Object? status = _Undefined,
  }) {
    return SignUpRequest(
      id: id is int? ? id : this.id,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      email: email is String? ? email : this.email,
      emailOtp: emailOtp is String? ? emailOtp : this.emailOtp,
      phoneOtp: phoneOtp is String? ? phoneOtp : this.phoneOtp,
      isPhoneVerified:
          isPhoneVerified is bool? ? isPhoneVerified : this.isPhoneVerified,
      isEmailVerified:
          isEmailVerified is bool? ? isEmailVerified : this.isEmailVerified,
      status: status is _i2.UserStatus? ? status : this.status,
    );
  }
}

class SignUpRequestTable extends _i1.Table {
  SignUpRequestTable({super.tableRelation})
      : super(tableName: 'sign_up_request') {
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    emailOtp = _i1.ColumnString(
      'emailOtp',
      this,
    );
    phoneOtp = _i1.ColumnString(
      'phoneOtp',
      this,
    );
    isPhoneVerified = _i1.ColumnBool(
      'isPhoneVerified',
      this,
    );
    isEmailVerified = _i1.ColumnBool(
      'isEmailVerified',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
    );
  }

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString email;

  late final _i1.ColumnString emailOtp;

  late final _i1.ColumnString phoneOtp;

  late final _i1.ColumnBool isPhoneVerified;

  late final _i1.ColumnBool isEmailVerified;

  late final _i1.ColumnEnum<_i2.UserStatus> status;

  @override
  List<_i1.Column> get columns => [
        id,
        phoneNumber,
        email,
        emailOtp,
        phoneOtp,
        isPhoneVerified,
        isEmailVerified,
        status,
      ];
}

@Deprecated('Use SignUpRequestTable.t instead.')
SignUpRequestTable tSignUpRequest = SignUpRequestTable();

class SignUpRequestInclude extends _i1.IncludeObject {
  SignUpRequestInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => SignUpRequest.t;
}

class SignUpRequestIncludeList extends _i1.IncludeList {
  SignUpRequestIncludeList._({
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SignUpRequest.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => SignUpRequest.t;
}

class SignUpRequestRepository {
  const SignUpRequestRepository._();

  Future<List<SignUpRequest>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SignUpRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SignUpRequestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<SignUpRequest>(
      where: where?.call(SignUpRequest.t),
      orderBy: orderBy?.call(SignUpRequest.t),
      orderByList: orderByList?.call(SignUpRequest.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SignUpRequest?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? offset,
    _i1.OrderByBuilder<SignUpRequestTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SignUpRequestTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<SignUpRequest>(
      where: where?.call(SignUpRequest.t),
      orderBy: orderBy?.call(SignUpRequest.t),
      orderByList: orderByList?.call(SignUpRequest.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<SignUpRequest?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<SignUpRequest>(
      id,
      transaction: transaction,
    );
  }

  Future<List<SignUpRequest>> insert(
    _i1.Session session,
    List<SignUpRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<SignUpRequest>(
      rows,
      transaction: transaction,
    );
  }

  Future<SignUpRequest> insertRow(
    _i1.Session session,
    SignUpRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<SignUpRequest>(
      row,
      transaction: transaction,
    );
  }

  Future<List<SignUpRequest>> update(
    _i1.Session session,
    List<SignUpRequest> rows, {
    _i1.ColumnSelections<SignUpRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<SignUpRequest>(
      rows,
      columns: columns?.call(SignUpRequest.t),
      transaction: transaction,
    );
  }

  Future<SignUpRequest> updateRow(
    _i1.Session session,
    SignUpRequest row, {
    _i1.ColumnSelections<SignUpRequestTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<SignUpRequest>(
      row,
      columns: columns?.call(SignUpRequest.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<SignUpRequest> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<SignUpRequest>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    SignUpRequest row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<SignUpRequest>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SignUpRequestTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<SignUpRequest>(
      where: where(SignUpRequest.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SignUpRequestTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<SignUpRequest>(
      where: where?.call(SignUpRequest.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
