/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

enum UserStatus with _i1.SerializableEntity {
  unverified,
  incomplete,
  noShopAssociated,
  hasInvite,
  noIssue;

  static UserStatus? fromJson(String name) {
    switch (name) {
      case 'unverified':
        return unverified;
      case 'incomplete':
        return incomplete;
      case 'noShopAssociated':
        return noShopAssociated;
      case 'hasInvite':
        return hasInvite;
      case 'noIssue':
        return noIssue;
      default:
        return null;
    }
  }

  @override
  String toJson() => name;
  @override
  String toString() => toJson();
}
