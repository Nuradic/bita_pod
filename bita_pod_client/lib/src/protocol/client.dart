/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:bita_pod_client/src/protocol/catagory.dart' as _i3;
import 'package:bita_pod_client/src/protocol/brand.dart' as _i4;
import 'package:bita_pod_client/src/protocol/shop.dart' as _i5;
import 'package:bita_pod_client/src/protocol/user_status.dart' as _i6;
import 'package:bita_pod_client/src/protocol/user_info.dart' as _i7;
import 'package:bita_pod_client/src/protocol/auth.dart' as _i8;
import 'package:serverpod_auth_client/module.dart' as _i9;
import 'protocol.dart' as _i10;

/// {@category Endpoint}
class EndpointCatagoryBrand extends _i1.EndpointRef {
  EndpointCatagoryBrand(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'catagoryBrand';

  _i2.Future<List<_i3.Catagory>> createCatagories() =>
      caller.callServerEndpoint<List<_i3.Catagory>>(
        'catagoryBrand',
        'createCatagories',
        {},
      );

  _i2.Future<List<_i3.Catagory>> getCatagories() =>
      caller.callServerEndpoint<List<_i3.Catagory>>(
        'catagoryBrand',
        'getCatagories',
        {},
      );

  _i2.Future<List<_i3.Catagory>> getMainCatagories() =>
      caller.callServerEndpoint<List<_i3.Catagory>>(
        'catagoryBrand',
        'getMainCatagories',
        {},
      );

  _i2.Future<List<_i4.Brand>> createBrands() =>
      caller.callServerEndpoint<List<_i4.Brand>>(
        'catagoryBrand',
        'createBrands',
        {},
      );

  _i2.Future<List<_i4.Brand>> getBrands() =>
      caller.callServerEndpoint<List<_i4.Brand>>(
        'catagoryBrand',
        'getBrands',
        {},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointShop extends _i1.EndpointRef {
  EndpointShop(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'shop';

  _i2.Future<_i5.Shop> createShop(_i5.Shop shop) =>
      caller.callServerEndpoint<_i5.Shop>(
        'shop',
        'createShop',
        {'shop': shop},
      );

  _i2.Future<List<_i5.Shop>> getMyShops() =>
      caller.callServerEndpoint<List<_i5.Shop>>(
        'shop',
        'getMyShops',
        {},
      );

  _i2.Future<List<_i5.Shop>> suggestedShops() =>
      caller.callServerEndpoint<List<_i5.Shop>>(
        'shop',
        'suggestedShops',
        {},
      );

  _i2.Future<_i5.Shop> updateShop(_i5.Shop shop) =>
      caller.callServerEndpoint<_i5.Shop>(
        'shop',
        'updateShop',
        {'shop': shop},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  _i2.Future<_i6.UserStatus> getStartedPhone(_i7.BackgroundInfo bg) =>
      caller.callServerEndpoint<_i6.UserStatus>(
        'user',
        'getStartedPhone',
        {'bg': bg},
      );

  _i2.Future<_i6.UserStatus> getStartedEmail(_i7.BackgroundInfo bg) =>
      caller.callServerEndpoint<_i6.UserStatus>(
        'user',
        'getStartedEmail',
        {'bg': bg},
      );

  _i2.Future<_i8.Authentication?> loginWithOtpAndPhone(
    String phone,
    String otp,
  ) =>
      caller.callServerEndpoint<_i8.Authentication?>(
        'user',
        'loginWithOtpAndPhone',
        {
          'phone': phone,
          'otp': otp,
        },
      );

  _i2.Future<_i8.Authentication?> loginWithOtpAndEmail(
    String email,
    String otp,
  ) =>
      caller.callServerEndpoint<_i8.Authentication?>(
        'user',
        'loginWithOtpAndEmail',
        {
          'email': email,
          'otp': otp,
        },
      );

  _i2.Future<_i8.Authentication?> loginWithPhoneAndPassword(
    String phone,
    String password,
  ) =>
      caller.callServerEndpoint<_i8.Authentication?>(
        'user',
        'loginWithPhoneAndPassword',
        {
          'phone': phone,
          'password': password,
        },
      );

  _i2.Future<_i8.Authentication?> loginWithEmailAndPassword(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i8.Authentication?>(
        'user',
        'loginWithEmailAndPassword',
        {
          'email': email,
          'password': password,
        },
      );

  _i2.Future<void> logout() => caller.callServerEndpoint<void>(
        'user',
        'logout',
        {},
      );

  _i2.Future<_i7.BackgroundInfo?> getBgInfo() =>
      caller.callServerEndpoint<_i7.BackgroundInfo?>(
        'user',
        'getBgInfo',
        {},
      );

  _i2.Future<bool> checkIfnumberOremailExists(String value) =>
      caller.callServerEndpoint<bool>(
        'user',
        'checkIfnumberOremailExists',
        {'value': value},
      );

  _i2.Future<_i7.BackgroundInfo> updateUser(_i7.BackgroundInfo info) =>
      caller.callServerEndpoint<_i7.BackgroundInfo>(
        'user',
        'updateUser',
        {'info': info},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i9.Caller(client);
  }

  late final _i9.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i10.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    catagoryBrand = EndpointCatagoryBrand(this);
    example = EndpointExample(this);
    shop = EndpointShop(this);
    user = EndpointUser(this);
    modules = _Modules(this);
  }

  late final EndpointCatagoryBrand catagoryBrand;

  late final EndpointExample example;

  late final EndpointShop shop;

  late final EndpointUser user;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'catagoryBrand': catagoryBrand,
        'example': example,
        'shop': shop,
        'user': user,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
