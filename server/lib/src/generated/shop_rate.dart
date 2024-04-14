/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

enum ShopRate with _i1.SerializableEntity {
  ONE,
  TWO,
  THREE,
  FOUR,
  FIVE;

  static ShopRate? fromJson(int index) {
    switch (index) {
      case 0:
        return ONE;
      case 1:
        return TWO;
      case 2:
        return THREE;
      case 3:
        return FOUR;
      case 4:
        return FIVE;
      default:
        return null;
    }
  }

  @override
  int toJson() => index;
}
