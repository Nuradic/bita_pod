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

abstract class Catagory extends _i1.SerializableEntity {
  Catagory._({
    this.id,
    required this.name,
    this.desc,
    this.catagoryId,
    this.catagory,
    this.subcatagories,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? desc;

  int? catagoryId;

  _i2.Catagory? catagory;

  List<_i2.Catagory>? subcatagories;

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
