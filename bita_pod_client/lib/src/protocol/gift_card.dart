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

abstract class GiftCard extends _i1.SerializableEntity {
  GiftCard._({
    this.id,
    required this.ownerId,
    this.owner,
    this.createdById,
    this.createdBy,
    required this.reedemed,
    this.expireDate,
    required this.createdAt,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int ownerId;

  _i2.UserInfo? owner;

  int? createdById;

  _i2.UserInfo? createdBy;

  bool reedemed;

  DateTime? expireDate;

  DateTime createdAt;

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
