/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Brand extends _i1.SerializableEntity {
  Brand._({
    this.id,
    required this.name,
    required this.desc,
    required this.catagoryId,
    this.catagory,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String desc;

  int catagoryId;

  _i2.Catagory? catagory;

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
