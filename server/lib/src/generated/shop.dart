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
import 'protocol.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Shop extends _i1.TableRow {
  Shop._({
    int? id,
    required this.name,
    this.logo,
    this.bgImage,
    required this.ownerId,
    this.owner,
    this.catagoryId,
    this.catagory,
    this.employees,
    this.addressId,
    this.address,
    required this.createdAt,
    required this.updatedAt,
  }) : super(id);

  factory Shop({
    int? id,
    required String name,
    String? logo,
    String? bgImage,
    required int ownerId,
    _i2.UserInfo? owner,
    int? catagoryId,
    _i3.Catagory? catagory,
    List<_i3.Employe>? employees,
    int? addressId,
    _i3.Address? address,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ShopImpl;

  factory Shop.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Shop(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      logo:
          serializationManager.deserialize<String?>(jsonSerialization['logo']),
      bgImage: serializationManager
          .deserialize<String?>(jsonSerialization['bgImage']),
      ownerId:
          serializationManager.deserialize<int>(jsonSerialization['ownerId']),
      owner: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['owner']),
      catagoryId: serializationManager
          .deserialize<int?>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i3.Catagory?>(jsonSerialization['catagory']),
      employees: serializationManager
          .deserialize<List<_i3.Employe>?>(jsonSerialization['employees']),
      addressId: serializationManager
          .deserialize<int?>(jsonSerialization['addressId']),
      address: serializationManager
          .deserialize<_i3.Address?>(jsonSerialization['address']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
      updatedAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['updatedAt']),
    );
  }

  static final t = ShopTable();

  static const db = ShopRepository._();

  String name;

  String? logo;

  String? bgImage;

  int ownerId;

  _i2.UserInfo? owner;

  int? catagoryId;

  _i3.Catagory? catagory;

  List<_i3.Employe>? employees;

  int? addressId;

  _i3.Address? address;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table get table => t;

  Shop copyWith({
    int? id,
    String? name,
    String? logo,
    String? bgImage,
    int? ownerId,
    _i2.UserInfo? owner,
    int? catagoryId,
    _i3.Catagory? catagory,
    List<_i3.Employe>? employees,
    int? addressId,
    _i3.Address? address,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (logo != null) 'logo': logo,
      if (bgImage != null) 'bgImage': bgImage,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.toJson(),
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      if (employees != null)
        'employees': employees?.toJson(valueToJson: (v) => v.toJson()),
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.toJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'logo': logo,
      'bgImage': bgImage,
      'ownerId': ownerId,
      'catagoryId': catagoryId,
      'addressId': addressId,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (logo != null) 'logo': logo,
      if (bgImage != null) 'bgImage': bgImage,
      'ownerId': ownerId,
      if (owner != null) 'owner': owner?.allToJson(),
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.allToJson(),
      if (employees != null)
        'employees': employees?.toJson(valueToJson: (v) => v.allToJson()),
      if (addressId != null) 'addressId': addressId,
      if (address != null) 'address': address?.allToJson(),
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
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
      case 'logo':
        logo = value;
        return;
      case 'bgImage':
        bgImage = value;
        return;
      case 'ownerId':
        ownerId = value;
        return;
      case 'catagoryId':
        catagoryId = value;
        return;
      case 'addressId':
        addressId = value;
        return;
      case 'createdAt':
        createdAt = value;
        return;
      case 'updatedAt':
        updatedAt = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Shop>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.db.find<Shop>(
      where: where != null ? where(Shop.t) : null,
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
  static Future<Shop?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.db.findSingleRow<Shop>(
      where: where != null ? where(Shop.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Shop?> findById(
    _i1.Session session,
    int id, {
    ShopInclude? include,
  }) async {
    return session.db.findById<Shop>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Shop>(
      where: where(Shop.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Shop row, {
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
    Shop row, {
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
    Shop row, {
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
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Shop>(
      where: where != null ? where(Shop.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ShopInclude include({
    _i2.UserInfoInclude? owner,
    _i3.CatagoryInclude? catagory,
    _i3.EmployeIncludeList? employees,
    _i3.AddressInclude? address,
  }) {
    return ShopInclude._(
      owner: owner,
      catagory: catagory,
      employees: employees,
      address: address,
    );
  }

  static ShopIncludeList includeList({
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    ShopInclude? include,
  }) {
    return ShopIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Shop.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Shop.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ShopImpl extends Shop {
  _ShopImpl({
    int? id,
    required String name,
    String? logo,
    String? bgImage,
    required int ownerId,
    _i2.UserInfo? owner,
    int? catagoryId,
    _i3.Catagory? catagory,
    List<_i3.Employe>? employees,
    int? addressId,
    _i3.Address? address,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          name: name,
          logo: logo,
          bgImage: bgImage,
          ownerId: ownerId,
          owner: owner,
          catagoryId: catagoryId,
          catagory: catagory,
          employees: employees,
          addressId: addressId,
          address: address,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  @override
  Shop copyWith({
    Object? id = _Undefined,
    String? name,
    Object? logo = _Undefined,
    Object? bgImage = _Undefined,
    int? ownerId,
    Object? owner = _Undefined,
    Object? catagoryId = _Undefined,
    Object? catagory = _Undefined,
    Object? employees = _Undefined,
    Object? addressId = _Undefined,
    Object? address = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Shop(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      logo: logo is String? ? logo : this.logo,
      bgImage: bgImage is String? ? bgImage : this.bgImage,
      ownerId: ownerId ?? this.ownerId,
      owner: owner is _i2.UserInfo? ? owner : this.owner?.copyWith(),
      catagoryId: catagoryId is int? ? catagoryId : this.catagoryId,
      catagory:
          catagory is _i3.Catagory? ? catagory : this.catagory?.copyWith(),
      employees:
          employees is List<_i3.Employe>? ? employees : this.employees?.clone(),
      addressId: addressId is int? ? addressId : this.addressId,
      address: address is _i3.Address? ? address : this.address?.copyWith(),
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class ShopTable extends _i1.Table {
  ShopTable({super.tableRelation}) : super(tableName: 'shop') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    logo = _i1.ColumnString(
      'logo',
      this,
    );
    bgImage = _i1.ColumnString(
      'bgImage',
      this,
    );
    ownerId = _i1.ColumnInt(
      'ownerId',
      this,
    );
    catagoryId = _i1.ColumnInt(
      'catagoryId',
      this,
    );
    addressId = _i1.ColumnInt(
      'addressId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString logo;

  late final _i1.ColumnString bgImage;

  late final _i1.ColumnInt ownerId;

  _i2.UserInfoTable? _owner;

  late final _i1.ColumnInt catagoryId;

  _i3.CatagoryTable? _catagory;

  _i3.EmployeTable? ___employees;

  _i1.ManyRelation<_i3.EmployeTable>? _employees;

  late final _i1.ColumnInt addressId;

  _i3.AddressTable? _address;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  _i2.UserInfoTable get owner {
    if (_owner != null) return _owner!;
    _owner = _i1.createRelationTable(
      relationFieldName: 'owner',
      field: Shop.t.ownerId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _owner!;
  }

  _i3.CatagoryTable get catagory {
    if (_catagory != null) return _catagory!;
    _catagory = _i1.createRelationTable(
      relationFieldName: 'catagory',
      field: Shop.t.catagoryId,
      foreignField: _i3.Catagory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return _catagory!;
  }

  _i3.EmployeTable get __employees {
    if (___employees != null) return ___employees!;
    ___employees = _i1.createRelationTable(
      relationFieldName: '__employees',
      field: Shop.t.id,
      foreignField: _i3.Employe.t.shopId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.EmployeTable(tableRelation: foreignTableRelation),
    );
    return ___employees!;
  }

  _i3.AddressTable get address {
    if (_address != null) return _address!;
    _address = _i1.createRelationTable(
      relationFieldName: 'address',
      field: Shop.t.addressId,
      foreignField: _i3.Address.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.AddressTable(tableRelation: foreignTableRelation),
    );
    return _address!;
  }

  _i1.ManyRelation<_i3.EmployeTable> get employees {
    if (_employees != null) return _employees!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'employees',
      field: Shop.t.id,
      foreignField: _i3.Employe.t.shopId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.EmployeTable(tableRelation: foreignTableRelation),
    );
    _employees = _i1.ManyRelation<_i3.EmployeTable>(
      tableWithRelations: relationTable,
      table: _i3.EmployeTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _employees!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        logo,
        bgImage,
        ownerId,
        catagoryId,
        addressId,
        createdAt,
        updatedAt,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'owner') {
      return owner;
    }
    if (relationField == 'catagory') {
      return catagory;
    }
    if (relationField == 'employees') {
      return __employees;
    }
    if (relationField == 'address') {
      return address;
    }
    return null;
  }
}

@Deprecated('Use ShopTable.t instead.')
ShopTable tShop = ShopTable();

class ShopInclude extends _i1.IncludeObject {
  ShopInclude._({
    _i2.UserInfoInclude? owner,
    _i3.CatagoryInclude? catagory,
    _i3.EmployeIncludeList? employees,
    _i3.AddressInclude? address,
  }) {
    _owner = owner;
    _catagory = catagory;
    _employees = employees;
    _address = address;
  }

  _i2.UserInfoInclude? _owner;

  _i3.CatagoryInclude? _catagory;

  _i3.EmployeIncludeList? _employees;

  _i3.AddressInclude? _address;

  @override
  Map<String, _i1.Include?> get includes => {
        'owner': _owner,
        'catagory': _catagory,
        'employees': _employees,
        'address': _address,
      };

  @override
  _i1.Table get table => Shop.t;
}

class ShopIncludeList extends _i1.IncludeList {
  ShopIncludeList._({
    _i1.WhereExpressionBuilder<ShopTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Shop.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Shop.t;
}

class ShopRepository {
  const ShopRepository._();

  final attach = const ShopAttachRepository._();

  final attachRow = const ShopAttachRowRepository._();

  final detachRow = const ShopDetachRowRepository._();

  Future<List<Shop>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.dbNext.find<Shop>(
      where: where?.call(Shop.t),
      orderBy: orderBy?.call(Shop.t),
      orderByList: orderByList?.call(Shop.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Shop?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? offset,
    _i1.OrderByBuilder<ShopTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ShopTable>? orderByList,
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Shop>(
      where: where?.call(Shop.t),
      orderBy: orderBy?.call(Shop.t),
      orderByList: orderByList?.call(Shop.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Shop?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ShopInclude? include,
  }) async {
    return session.dbNext.findById<Shop>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Shop>> insert(
    _i1.Session session,
    List<Shop> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Shop>(
      rows,
      transaction: transaction,
    );
  }

  Future<Shop> insertRow(
    _i1.Session session,
    Shop row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Shop>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Shop>> update(
    _i1.Session session,
    List<Shop> rows, {
    _i1.ColumnSelections<ShopTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Shop>(
      rows,
      columns: columns?.call(Shop.t),
      transaction: transaction,
    );
  }

  Future<Shop> updateRow(
    _i1.Session session,
    Shop row, {
    _i1.ColumnSelections<ShopTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Shop>(
      row,
      columns: columns?.call(Shop.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Shop> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Shop>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Shop row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Shop>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ShopTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Shop>(
      where: where(Shop.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ShopTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Shop>(
      where: where?.call(Shop.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ShopAttachRepository {
  const ShopAttachRepository._();

  Future<void> employees(
    _i1.Session session,
    Shop shop,
    List<_i3.Employe> employe,
  ) async {
    if (employe.any((e) => e.id == null)) {
      throw ArgumentError.notNull('employe.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $employe = employe.map((e) => e.copyWith(shopId: shop.id)).toList();
    await session.dbNext.update<_i3.Employe>(
      $employe,
      columns: [_i3.Employe.t.shopId],
    );
  }
}

class ShopAttachRowRepository {
  const ShopAttachRowRepository._();

  Future<void> owner(
    _i1.Session session,
    Shop shop,
    _i2.UserInfo owner,
  ) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }
    if (owner.id == null) {
      throw ArgumentError.notNull('owner.id');
    }

    var $shop = shop.copyWith(ownerId: owner.id);
    await session.dbNext.updateRow<Shop>(
      $shop,
      columns: [Shop.t.ownerId],
    );
  }

  Future<void> catagory(
    _i1.Session session,
    Shop shop,
    _i3.Catagory catagory,
  ) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $shop = shop.copyWith(catagoryId: catagory.id);
    await session.dbNext.updateRow<Shop>(
      $shop,
      columns: [Shop.t.catagoryId],
    );
  }

  Future<void> address(
    _i1.Session session,
    Shop shop,
    _i3.Address address,
  ) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }
    if (address.id == null) {
      throw ArgumentError.notNull('address.id');
    }

    var $shop = shop.copyWith(addressId: address.id);
    await session.dbNext.updateRow<Shop>(
      $shop,
      columns: [Shop.t.addressId],
    );
  }

  Future<void> employees(
    _i1.Session session,
    Shop shop,
    _i3.Employe employe,
  ) async {
    if (employe.id == null) {
      throw ArgumentError.notNull('employe.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $employe = employe.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<_i3.Employe>(
      $employe,
      columns: [_i3.Employe.t.shopId],
    );
  }
}

class ShopDetachRowRepository {
  const ShopDetachRowRepository._();

  Future<void> catagory(
    _i1.Session session,
    Shop shop,
  ) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $shop = shop.copyWith(catagoryId: null);
    await session.dbNext.updateRow<Shop>(
      $shop,
      columns: [Shop.t.catagoryId],
    );
  }

  Future<void> address(
    _i1.Session session,
    Shop shop,
  ) async {
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $shop = shop.copyWith(addressId: null);
    await session.dbNext.updateRow<Shop>(
      $shop,
      columns: [Shop.t.addressId],
    );
  }
}
