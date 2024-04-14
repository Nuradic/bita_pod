/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Policy extends _i1.SerializableEntity {
  Policy._({
    this.id,
    required this.number,
    required this.detail,
    required this.createdAt,
  });

  factory Policy({
    int? id,
    required int number,
    required String detail,
    required DateTime createdAt,
  }) = _PolicyImpl;

  factory Policy.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Policy(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      number:
          serializationManager.deserialize<int>(jsonSerialization['number']),
      detail:
          serializationManager.deserialize<String>(jsonSerialization['detail']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int number;

  String detail;

  DateTime createdAt;

  Policy copyWith({
    int? id,
    int? number,
    String? detail,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'number': number,
      'detail': detail,
      'createdAt': createdAt.toJson(),
    };
  }
}

class _Undefined {}

class _PolicyImpl extends Policy {
  _PolicyImpl({
    int? id,
    required int number,
    required String detail,
    required DateTime createdAt,
  }) : super._(
          id: id,
          number: number,
          detail: detail,
          createdAt: createdAt,
        );

  @override
  Policy copyWith({
    Object? id = _Undefined,
    int? number,
    String? detail,
    DateTime? createdAt,
  }) {
    return Policy(
      id: id is int? ? id : this.id,
      number: number ?? this.number,
      detail: detail ?? this.detail,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
