/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum ReportStatus with _i1.SerializableEntity {
  PENDING_REVIEW,
  REVIEWED,
  CANCELED,
  TAKE_ACTION;

  static ReportStatus? fromJson(String name) {
    switch (name) {
      case 'PENDING_REVIEW':
        return PENDING_REVIEW;
      case 'REVIEWED':
        return REVIEWED;
      case 'CANCELED':
        return CANCELED;
      case 'TAKE_ACTION':
        return TAKE_ACTION;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}
