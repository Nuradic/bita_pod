/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/catagory_brand_endpoint.dart' as _i2;
import '../endpoints/example_endpoint.dart' as _i3;
import '../endpoints/shop_endpoint.dart' as _i4;
import '../endpoints/user_endpoint.dart' as _i5;
import 'package:bita_pod_server/src/generated/shop.dart' as _i6;
import 'package:bita_pod_server/src/generated/user_info.dart' as _i7;
import 'package:serverpod_auth_server/module.dart' as _i8;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'catagoryBrand': _i2.CatagoryBrandEndpoint()
        ..initialize(
          server,
          'catagoryBrand',
          null,
        ),
      'example': _i3.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'shop': _i4.ShopEndpoint()
        ..initialize(
          server,
          'shop',
          null,
        ),
      'user': _i5.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
    };
    connectors['catagoryBrand'] = _i1.EndpointConnector(
      name: 'catagoryBrand',
      endpoint: endpoints['catagoryBrand']!,
      methodConnectors: {
        'createCatagories': _i1.MethodConnector(
          name: 'createCatagories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['catagoryBrand'] as _i2.CatagoryBrandEndpoint)
                  .createCatagories(session),
        ),
        'getCatagories': _i1.MethodConnector(
          name: 'getCatagories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['catagoryBrand'] as _i2.CatagoryBrandEndpoint)
                  .getCatagories(session),
        ),
        'getMainCatagories': _i1.MethodConnector(
          name: 'getMainCatagories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['catagoryBrand'] as _i2.CatagoryBrandEndpoint)
                  .getMainCatagories(session),
        ),
        'createBrands': _i1.MethodConnector(
          name: 'createBrands',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['catagoryBrand'] as _i2.CatagoryBrandEndpoint)
                  .createBrands(session),
        ),
        'getBrands': _i1.MethodConnector(
          name: 'getBrands',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['catagoryBrand'] as _i2.CatagoryBrandEndpoint)
                  .getBrands(session),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i3.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        )
      },
    );
    connectors['shop'] = _i1.EndpointConnector(
      name: 'shop',
      endpoint: endpoints['shop']!,
      methodConnectors: {
        'createShop': _i1.MethodConnector(
          name: 'createShop',
          params: {
            'shop': _i1.ParameterDescription(
              name: 'shop',
              type: _i1.getType<_i6.Shop>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['shop'] as _i4.ShopEndpoint).createShop(
            session,
            params['shop'],
          ),
        ),
        'getMyShops': _i1.MethodConnector(
          name: 'getMyShops',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['shop'] as _i4.ShopEndpoint).getMyShops(session),
        ),
        'suggestedShops': _i1.MethodConnector(
          name: 'suggestedShops',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['shop'] as _i4.ShopEndpoint).suggestedShops(session),
        ),
        'updateShop': _i1.MethodConnector(
          name: 'updateShop',
          params: {
            'shop': _i1.ParameterDescription(
              name: 'shop',
              type: _i1.getType<_i6.Shop>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['shop'] as _i4.ShopEndpoint).updateShop(
            session,
            params['shop'],
          ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getStartedPhone': _i1.MethodConnector(
          name: 'getStartedPhone',
          params: {
            'bg': _i1.ParameterDescription(
              name: 'bg',
              type: _i1.getType<_i7.BackgroundInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getStartedPhone(
            session,
            params['bg'],
          ),
        ),
        'getStartedEmail': _i1.MethodConnector(
          name: 'getStartedEmail',
          params: {
            'bg': _i1.ParameterDescription(
              name: 'bg',
              type: _i1.getType<_i7.BackgroundInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getStartedEmail(
            session,
            params['bg'],
          ),
        ),
        'loginWithOtpAndPhone': _i1.MethodConnector(
          name: 'loginWithOtpAndPhone',
          params: {
            'phone': _i1.ParameterDescription(
              name: 'phone',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'otp': _i1.ParameterDescription(
              name: 'otp',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).loginWithOtpAndPhone(
            session,
            params['phone'],
            params['otp'],
          ),
        ),
        'loginWithOtpAndEmail': _i1.MethodConnector(
          name: 'loginWithOtpAndEmail',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'otp': _i1.ParameterDescription(
              name: 'otp',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).loginWithOtpAndEmail(
            session,
            params['email'],
            params['otp'],
          ),
        ),
        'loginWithPhoneAndPassword': _i1.MethodConnector(
          name: 'loginWithPhoneAndPassword',
          params: {
            'phone': _i1.ParameterDescription(
              name: 'phone',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).loginWithPhoneAndPassword(
            session,
            params['phone'],
            params['password'],
          ),
        ),
        'loginWithEmailAndPassword': _i1.MethodConnector(
          name: 'loginWithEmailAndPassword',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).loginWithEmailAndPassword(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'logout': _i1.MethodConnector(
          name: 'logout',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).logout(session),
        ),
        'getBgInfo': _i1.MethodConnector(
          name: 'getBgInfo',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).getBgInfo(session),
        ),
        'checkIfnumberOremailExists': _i1.MethodConnector(
          name: 'checkIfnumberOremailExists',
          params: {
            'value': _i1.ParameterDescription(
              name: 'value',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint)
                  .checkIfnumberOremailExists(
            session,
            params['value'],
          ),
        ),
        'updateUser': _i1.MethodConnector(
          name: 'updateUser',
          params: {
            'info': _i1.ParameterDescription(
              name: 'info',
              type: _i1.getType<_i7.BackgroundInfo>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['user'] as _i5.UserEndpoint).updateUser(
            session,
            params['info'],
          ),
        ),
      },
    );
    modules['serverpod_auth'] = _i8.Endpoints()..initializeEndpoints(server);
  }
}
