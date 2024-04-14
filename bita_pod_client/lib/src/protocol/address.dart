/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Address extends _i1.SerializableEntity {
  Address._({
    this.id,
    this.lat,
    this.lng,
    this.plusCode,
    this.name,
    this.street,
    this.isoCountryCode,
    this.country,
    this.postalCode,
    this.administrativeArea,
    this.subAdministrativeArea,
    this.locality,
    this.subLocality,
    this.thoroughfare,
    this.subThoroughfare,
  });

  factory Address({
    int? id,
    double? lat,
    double? lng,
    String? plusCode,
    String? name,
    String? street,
    String? isoCountryCode,
    String? country,
    String? postalCode,
    String? administrativeArea,
    String? subAdministrativeArea,
    String? locality,
    String? subLocality,
    String? thoroughfare,
    String? subThoroughfare,
  }) = _AddressImpl;

  factory Address.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Address(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      lat: serializationManager.deserialize<double?>(jsonSerialization['lat']),
      lng: serializationManager.deserialize<double?>(jsonSerialization['lng']),
      plusCode: serializationManager
          .deserialize<String?>(jsonSerialization['plusCode']),
      name:
          serializationManager.deserialize<String?>(jsonSerialization['name']),
      street: serializationManager
          .deserialize<String?>(jsonSerialization['street']),
      isoCountryCode: serializationManager
          .deserialize<String?>(jsonSerialization['isoCountryCode']),
      country: serializationManager
          .deserialize<String?>(jsonSerialization['country']),
      postalCode: serializationManager
          .deserialize<String?>(jsonSerialization['postalCode']),
      administrativeArea: serializationManager
          .deserialize<String?>(jsonSerialization['administrativeArea']),
      subAdministrativeArea: serializationManager
          .deserialize<String?>(jsonSerialization['subAdministrativeArea']),
      locality: serializationManager
          .deserialize<String?>(jsonSerialization['locality']),
      subLocality: serializationManager
          .deserialize<String?>(jsonSerialization['subLocality']),
      thoroughfare: serializationManager
          .deserialize<String?>(jsonSerialization['thoroughfare']),
      subThoroughfare: serializationManager
          .deserialize<String?>(jsonSerialization['subThoroughfare']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double? lat;

  double? lng;

  String? plusCode;

  String? name;

  String? street;

  String? isoCountryCode;

  String? country;

  String? postalCode;

  String? administrativeArea;

  String? subAdministrativeArea;

  String? locality;

  String? subLocality;

  String? thoroughfare;

  String? subThoroughfare;

  Address copyWith({
    int? id,
    double? lat,
    double? lng,
    String? plusCode,
    String? name,
    String? street,
    String? isoCountryCode,
    String? country,
    String? postalCode,
    String? administrativeArea,
    String? subAdministrativeArea,
    String? locality,
    String? subLocality,
    String? thoroughfare,
    String? subThoroughfare,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (lat != null) 'lat': lat,
      if (lng != null) 'lng': lng,
      if (plusCode != null) 'plusCode': plusCode,
      if (name != null) 'name': name,
      if (street != null) 'street': street,
      if (isoCountryCode != null) 'isoCountryCode': isoCountryCode,
      if (country != null) 'country': country,
      if (postalCode != null) 'postalCode': postalCode,
      if (administrativeArea != null) 'administrativeArea': administrativeArea,
      if (subAdministrativeArea != null)
        'subAdministrativeArea': subAdministrativeArea,
      if (locality != null) 'locality': locality,
      if (subLocality != null) 'subLocality': subLocality,
      if (thoroughfare != null) 'thoroughfare': thoroughfare,
      if (subThoroughfare != null) 'subThoroughfare': subThoroughfare,
    };
  }
}

class _Undefined {}

class _AddressImpl extends Address {
  _AddressImpl({
    int? id,
    double? lat,
    double? lng,
    String? plusCode,
    String? name,
    String? street,
    String? isoCountryCode,
    String? country,
    String? postalCode,
    String? administrativeArea,
    String? subAdministrativeArea,
    String? locality,
    String? subLocality,
    String? thoroughfare,
    String? subThoroughfare,
  }) : super._(
          id: id,
          lat: lat,
          lng: lng,
          plusCode: plusCode,
          name: name,
          street: street,
          isoCountryCode: isoCountryCode,
          country: country,
          postalCode: postalCode,
          administrativeArea: administrativeArea,
          subAdministrativeArea: subAdministrativeArea,
          locality: locality,
          subLocality: subLocality,
          thoroughfare: thoroughfare,
          subThoroughfare: subThoroughfare,
        );

  @override
  Address copyWith({
    Object? id = _Undefined,
    Object? lat = _Undefined,
    Object? lng = _Undefined,
    Object? plusCode = _Undefined,
    Object? name = _Undefined,
    Object? street = _Undefined,
    Object? isoCountryCode = _Undefined,
    Object? country = _Undefined,
    Object? postalCode = _Undefined,
    Object? administrativeArea = _Undefined,
    Object? subAdministrativeArea = _Undefined,
    Object? locality = _Undefined,
    Object? subLocality = _Undefined,
    Object? thoroughfare = _Undefined,
    Object? subThoroughfare = _Undefined,
  }) {
    return Address(
      id: id is int? ? id : this.id,
      lat: lat is double? ? lat : this.lat,
      lng: lng is double? ? lng : this.lng,
      plusCode: plusCode is String? ? plusCode : this.plusCode,
      name: name is String? ? name : this.name,
      street: street is String? ? street : this.street,
      isoCountryCode:
          isoCountryCode is String? ? isoCountryCode : this.isoCountryCode,
      country: country is String? ? country : this.country,
      postalCode: postalCode is String? ? postalCode : this.postalCode,
      administrativeArea: administrativeArea is String?
          ? administrativeArea
          : this.administrativeArea,
      subAdministrativeArea: subAdministrativeArea is String?
          ? subAdministrativeArea
          : this.subAdministrativeArea,
      locality: locality is String? ? locality : this.locality,
      subLocality: subLocality is String? ? subLocality : this.subLocality,
      thoroughfare: thoroughfare is String? ? thoroughfare : this.thoroughfare,
      subThoroughfare:
          subThoroughfare is String? ? subThoroughfare : this.subThoroughfare,
    );
  }
}
