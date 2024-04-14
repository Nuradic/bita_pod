/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum OrderStatus with _i1.SerializableEntity {
  COLLECTED,
  PENDING_CONFIRMATION,
  CONFIRMED,
  READY,
  RECEIVED;

  static OrderStatus? fromJson(String name) {
    switch (name) {
      case 'COLLECTED':
        return COLLECTED;
      case 'PENDING_CONFIRMATION':
        return PENDING_CONFIRMATION;
      case 'CONFIRMED':
        return CONFIRMED;
      case 'READY':
        return READY;
      case 'RECEIVED':
        return RECEIVED;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}
