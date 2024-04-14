/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class EndpointException extends _i1.SerializableEntity
    implements _i1.SerializableException {
  EndpointException._({
    required this.message,
    required this.code,
  });

  factory EndpointException({
    required String message,
    required int code,
  }) = _EndpointExceptionImpl;

  factory EndpointException.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return EndpointException(
      message: serializationManager
          .deserialize<String>(jsonSerialization['message']),
      code: serializationManager.deserialize<int>(jsonSerialization['code']),
    );
  }

  String message;

  int code;

  EndpointException copyWith({
    String? message,
    int? code,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'code': code,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'message': message,
      'code': code,
    };
  }
}

class _EndpointExceptionImpl extends EndpointException {
  _EndpointExceptionImpl({
    required String message,
    required int code,
  }) : super._(
          message: message,
          code: code,
        );

  @override
  EndpointException copyWith({
    String? message,
    int? code,
  }) {
    return EndpointException(
      message: message ?? this.message,
      code: code ?? this.code,
    );
  }
}
