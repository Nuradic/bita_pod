/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/module.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class Shop extends _i1.SerializableEntity {
  Shop._({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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
