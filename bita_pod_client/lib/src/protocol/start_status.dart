/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class StartStatus extends _i1.SerializableEntity {
  StartStatus._({
    required this.isRegistrationComplete,
    required this.created,
    required this.isVerified,
  });

  factory StartStatus({
    required bool isRegistrationComplete,
    required bool created,
    required bool isVerified,
  }) = _StartStatusImpl;

  factory StartStatus.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return StartStatus(
      isRegistrationComplete: serializationManager
          .deserialize<bool>(jsonSerialization['isRegistrationComplete']),
      created:
          serializationManager.deserialize<bool>(jsonSerialization['created']),
      isVerified: serializationManager
          .deserialize<bool>(jsonSerialization['isVerified']),
    );
  }

  bool isRegistrationComplete;

  bool created;

  bool isVerified;

  StartStatus copyWith({
    bool? isRegistrationComplete,
    bool? created,
    bool? isVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'isRegistrationComplete': isRegistrationComplete,
      'created': created,
      'isVerified': isVerified,
    };
  }
}

class _StartStatusImpl extends StartStatus {
  _StartStatusImpl({
    required bool isRegistrationComplete,
    required bool created,
    required bool isVerified,
  }) : super._(
          isRegistrationComplete: isRegistrationComplete,
          created: created,
          isVerified: isVerified,
        );

  @override
  StartStatus copyWith({
    bool? isRegistrationComplete,
    bool? created,
    bool? isVerified,
  }) {
    return StartStatus(
      isRegistrationComplete:
          isRegistrationComplete ?? this.isRegistrationComplete,
      created: created ?? this.created,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
