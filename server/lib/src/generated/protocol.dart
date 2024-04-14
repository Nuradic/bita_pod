/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;
import 'address.dart' as _i4;
import 'auth.dart' as _i5;
import 'biz_size.dart' as _i6;
import 'blocked.dart' as _i7;
import 'brand.dart' as _i8;
import 'catagory.dart' as _i9;
import 'employe.dart' as _i10;
import 'example.dart' as _i11;
import 'follow.dart' as _i12;
import 'gift_card.dart' as _i13;
import 'http_error.dart' as _i14;
import 'in_active_product.dart' as _i15;
import 'item.dart' as _i16;
import 'like.dart' as _i17;
import 'notification.dart' as _i18;
import 'notification_type.dart' as _i19;
import 'order.dart' as _i20;
import 'order_status.dart' as _i21;
import 'policy.dart' as _i22;
import 'product.dart' as _i23;
import 'report.dart' as _i24;
import 'report_status.dart' as _i25;
import 'sale.dart' as _i26;
import 'shop.dart' as _i27;
import 'shop_action.dart' as _i28;
import 'shop_activity.dart' as _i29;
import 'shop_preferences.dart' as _i30;
import 'shop_rate.dart' as _i31;
import 'shop_review.dart' as _i32;
import 'shop_role.dart' as _i33;
import 'sign_up_request.dart' as _i34;
import 'start_status.dart' as _i35;
import 'user_info.dart' as _i36;
import 'user_interest.dart' as _i37;
import 'user_status.dart' as _i38;
import 'protocol.dart' as _i39;
import 'package:bita_pod_server/src/generated/catagory.dart' as _i40;
import 'package:bita_pod_server/src/generated/brand.dart' as _i41;
import 'package:bita_pod_server/src/generated/shop.dart' as _i42;
export 'address.dart';
export 'auth.dart';
export 'biz_size.dart';
export 'blocked.dart';
export 'brand.dart';
export 'catagory.dart';
export 'employe.dart';
export 'example.dart';
export 'follow.dart';
export 'gift_card.dart';
export 'http_error.dart';
export 'in_active_product.dart';
export 'item.dart';
export 'like.dart';
export 'notification.dart';
export 'notification_type.dart';
export 'order.dart';
export 'order_status.dart';
export 'policy.dart';
export 'product.dart';
export 'report.dart';
export 'report_status.dart';
export 'sale.dart';
export 'shop.dart';
export 'shop_action.dart';
export 'shop_activity.dart';
export 'shop_preferences.dart';
export 'shop_rate.dart';
export 'shop_review.dart';
export 'shop_role.dart';
export 'sign_up_request.dart';
export 'start_status.dart';
export 'user_info.dart';
export 'user_interest.dart';
export 'user_status.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'address',
      dartName: 'Address',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'address_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'lat',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'lng',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'plusCode',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'street',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'isoCountryCode',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'country',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'postalCode',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'administrativeArea',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'subAdministrativeArea',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'locality',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'subLocality',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'thoroughfare',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'subThoroughfare',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'address_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'background_info',
      dartName: 'BackgroundInfo',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'background_info_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'password',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'firstName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'lastName',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'background_info_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'background_info_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'user_phone_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'phoneNumber',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _i2.IndexDefinition(
          indexName: 'bg_info_user',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'blocked',
      dartName: 'Blocked',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'blocked_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'endDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'blocked_fk_0',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'blocked_fk_1',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'blocked_fk_2',
          columns: ['productId'],
          referenceTable: 'product',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'blocked_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'brand',
      dartName: 'Brand',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'brand_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'catagoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'brand_fk_0',
          columns: ['catagoryId'],
          referenceTable: 'catagory',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'brand_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'catagory',
      dartName: 'Catagory',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'catagory_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'catagoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'catagory_fk_0',
          columns: ['catagoryId'],
          referenceTable: 'catagory',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'catagory_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'catagory_name_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'name',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'employe',
      dartName: 'Employe',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'employe_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'employe_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'employe_fk_1',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'employe_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'follow',
      dartName: 'Follow',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'follow_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'follow_fk_0',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'follow_fk_1',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'follow_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'gift_card',
      dartName: 'GiftCard',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'gift_card_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'createdById',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'reedemed',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'expireDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'gift_card_fk_0',
          columns: ['ownerId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'gift_card_fk_1',
          columns: ['createdById'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'gift_card_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'in_active_product',
      dartName: 'InActiveProduct',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'in_active_product_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'in_active_product_fk_0',
          columns: ['productId'],
          referenceTable: 'product',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'in_active_product_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'item',
      dartName: 'Item',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'item_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'quantity',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'orderId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_0',
          columns: ['productId'],
          referenceTable: 'product',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'item_fk_1',
          columns: ['orderId'],
          referenceTable: 'order',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'item_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'like',
      dartName: 'Like',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'like_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'productId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'like_fk_0',
          columns: ['productId'],
          referenceTable: 'product',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'like_fk_1',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'like_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        ),
        _i2.IndexDefinition(
          indexName: 'product_user_like_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'productId',
            ),
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'userId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'notification',
      dartName: 'Notification',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'notification_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'title',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'type',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:NotificationType',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'notification_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'notification_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'order',
      dartName: 'Order',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'order_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:OrderStatus',
        ),
        _i2.ColumnDefinition(
          name: 'soldById',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'message',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'order_fk_0',
          columns: ['soldById'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'order_fk_1',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'order_fk_2',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'order_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'policy',
      dartName: 'Policy',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'policy_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'number',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'detail',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'policy_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'product',
      dartName: 'Product',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'product_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'image',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'buyingPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'sellingPrice',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'brandId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'catagoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'product_fk_0',
          columns: ['brandId'],
          referenceTable: 'brand',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'product_fk_1',
          columns: ['catagoryId'],
          referenceTable: 'catagory',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'product_fk_2',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'product_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'report',
      dartName: 'Report',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'report_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:ReportStatus',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'reporterId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNum',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'violatorId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'report_fk_0',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'report_fk_1',
          columns: ['reporterId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'report_fk_2',
          columns: ['violatorId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'report_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sale',
      dartName: 'Sale',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sale_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'discount',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _i2.ColumnDefinition(
          name: 'price',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'orderId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'sale_fk_0',
          columns: ['orderId'],
          referenceTable: 'order',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.restrict,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sale_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shop',
      dartName: 'Shop',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shop_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'logo',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'bgImage',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'ownerId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'catagoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'addressId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'updatedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_fk_0',
          columns: ['ownerId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_fk_1',
          columns: ['catagoryId'],
          referenceTable: 'catagory',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_fk_2',
          columns: ['addressId'],
          referenceTable: 'address',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shop_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shop_activity',
      dartName: 'ShopActivity',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shop_activity_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'employeId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'desc',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'action',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:ShopAction?',
        ),
        _i2.ColumnDefinition(
          name: 'timestamp',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_activity_fk_0',
          columns: ['employeId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_activity_fk_1',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shop_activity_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shop_preference',
      dartName: 'ShopPreference',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shop_preference_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'isAvailableOnline',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'notifyNewProductComing',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _i2.ColumnDefinition(
          name: 'acceptOrders',
          columnType: _i2.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_preference_fk_0',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        )
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shop_preference_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'shop_review',
      dartName: 'ShopReview',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'shop_review_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: true,
          dartType: 'int?',
        ),
        _i2.ColumnDefinition(
          name: 'shopId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'content',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'rate',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'protocol:ShopRate',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_review_fk_0',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.setNull,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'shop_review_fk_1',
          columns: ['shopId'],
          referenceTable: 'shop',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'shop_review_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'sign_up_request',
      dartName: 'SignUpRequest',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'sign_up_request_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'phoneNumber',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'emailOtp',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'phoneOtp',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'isPhoneVerified',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'isEmailVerified',
          columnType: _i2.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'protocol:UserStatus?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'sign_up_request_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'user_interest',
      dartName: 'UserInterest',
      schema: 'public',
      module: 'bita_pod',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'user_interest_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'catagoryId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
        _i2.ColumnDefinition(
          name: 'userId',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _i2.ForeignKeyDefinition(
          constraintName: 'user_interest_fk_0',
          columns: ['catagoryId'],
          referenceTable: 'catagory',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
        _i2.ForeignKeyDefinition(
          constraintName: 'user_interest_fk_1',
          columns: ['userId'],
          referenceTable: 'serverpod_user_info',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _i2.ForeignKeyAction.noAction,
          onDelete: _i2.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'user_interest_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i3.Protocol.targetTableDefinitions,
    ..._i2.Protocol.targetTableDefinitions,
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i4.Address) {
      return _i4.Address.fromJson(data, this) as T;
    }
    if (t == _i5.Authentication) {
      return _i5.Authentication.fromJson(data, this) as T;
    }
    if (t == _i6.BizSize) {
      return _i6.BizSize.fromJson(data) as T;
    }
    if (t == _i7.Blocked) {
      return _i7.Blocked.fromJson(data, this) as T;
    }
    if (t == _i8.Brand) {
      return _i8.Brand.fromJson(data, this) as T;
    }
    if (t == _i9.Catagory) {
      return _i9.Catagory.fromJson(data, this) as T;
    }
    if (t == _i10.Employe) {
      return _i10.Employe.fromJson(data, this) as T;
    }
    if (t == _i11.Example) {
      return _i11.Example.fromJson(data, this) as T;
    }
    if (t == _i12.Follow) {
      return _i12.Follow.fromJson(data, this) as T;
    }
    if (t == _i13.GiftCard) {
      return _i13.GiftCard.fromJson(data, this) as T;
    }
    if (t == _i14.EndpointException) {
      return _i14.EndpointException.fromJson(data, this) as T;
    }
    if (t == _i15.InActiveProduct) {
      return _i15.InActiveProduct.fromJson(data, this) as T;
    }
    if (t == _i16.Item) {
      return _i16.Item.fromJson(data, this) as T;
    }
    if (t == _i17.Like) {
      return _i17.Like.fromJson(data, this) as T;
    }
    if (t == _i18.Notification) {
      return _i18.Notification.fromJson(data, this) as T;
    }
    if (t == _i19.NotificationType) {
      return _i19.NotificationType.fromJson(data) as T;
    }
    if (t == _i20.Order) {
      return _i20.Order.fromJson(data, this) as T;
    }
    if (t == _i21.OrderStatus) {
      return _i21.OrderStatus.fromJson(data) as T;
    }
    if (t == _i22.Policy) {
      return _i22.Policy.fromJson(data, this) as T;
    }
    if (t == _i23.Product) {
      return _i23.Product.fromJson(data, this) as T;
    }
    if (t == _i24.Report) {
      return _i24.Report.fromJson(data, this) as T;
    }
    if (t == _i25.ReportStatus) {
      return _i25.ReportStatus.fromJson(data) as T;
    }
    if (t == _i26.Sale) {
      return _i26.Sale.fromJson(data, this) as T;
    }
    if (t == _i27.Shop) {
      return _i27.Shop.fromJson(data, this) as T;
    }
    if (t == _i28.ShopAction) {
      return _i28.ShopAction.fromJson(data) as T;
    }
    if (t == _i29.ShopActivity) {
      return _i29.ShopActivity.fromJson(data, this) as T;
    }
    if (t == _i30.ShopPreference) {
      return _i30.ShopPreference.fromJson(data, this) as T;
    }
    if (t == _i31.ShopRate) {
      return _i31.ShopRate.fromJson(data) as T;
    }
    if (t == _i32.ShopReview) {
      return _i32.ShopReview.fromJson(data, this) as T;
    }
    if (t == _i33.ShopRole) {
      return _i33.ShopRole.fromJson(data) as T;
    }
    if (t == _i34.SignUpRequest) {
      return _i34.SignUpRequest.fromJson(data, this) as T;
    }
    if (t == _i35.StartStatus) {
      return _i35.StartStatus.fromJson(data, this) as T;
    }
    if (t == _i36.BackgroundInfo) {
      return _i36.BackgroundInfo.fromJson(data, this) as T;
    }
    if (t == _i37.UserInterest) {
      return _i37.UserInterest.fromJson(data, this) as T;
    }
    if (t == _i38.UserStatus) {
      return _i38.UserStatus.fromJson(data) as T;
    }
    if (t == _i1.getType<_i4.Address?>()) {
      return (data != null ? _i4.Address.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Authentication?>()) {
      return (data != null ? _i5.Authentication.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.BizSize?>()) {
      return (data != null ? _i6.BizSize.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Blocked?>()) {
      return (data != null ? _i7.Blocked.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.Brand?>()) {
      return (data != null ? _i8.Brand.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.Catagory?>()) {
      return (data != null ? _i9.Catagory.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Employe?>()) {
      return (data != null ? _i10.Employe.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i11.Example?>()) {
      return (data != null ? _i11.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i12.Follow?>()) {
      return (data != null ? _i12.Follow.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i13.GiftCard?>()) {
      return (data != null ? _i13.GiftCard.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i14.EndpointException?>()) {
      return (data != null ? _i14.EndpointException.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i15.InActiveProduct?>()) {
      return (data != null ? _i15.InActiveProduct.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i16.Item?>()) {
      return (data != null ? _i16.Item.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i17.Like?>()) {
      return (data != null ? _i17.Like.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i18.Notification?>()) {
      return (data != null ? _i18.Notification.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i19.NotificationType?>()) {
      return (data != null ? _i19.NotificationType.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.Order?>()) {
      return (data != null ? _i20.Order.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i21.OrderStatus?>()) {
      return (data != null ? _i21.OrderStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.Policy?>()) {
      return (data != null ? _i22.Policy.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i23.Product?>()) {
      return (data != null ? _i23.Product.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i24.Report?>()) {
      return (data != null ? _i24.Report.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i25.ReportStatus?>()) {
      return (data != null ? _i25.ReportStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i26.Sale?>()) {
      return (data != null ? _i26.Sale.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i27.Shop?>()) {
      return (data != null ? _i27.Shop.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i28.ShopAction?>()) {
      return (data != null ? _i28.ShopAction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i29.ShopActivity?>()) {
      return (data != null ? _i29.ShopActivity.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i30.ShopPreference?>()) {
      return (data != null ? _i30.ShopPreference.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i31.ShopRate?>()) {
      return (data != null ? _i31.ShopRate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i32.ShopReview?>()) {
      return (data != null ? _i32.ShopReview.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i33.ShopRole?>()) {
      return (data != null ? _i33.ShopRole.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i34.SignUpRequest?>()) {
      return (data != null ? _i34.SignUpRequest.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i35.StartStatus?>()) {
      return (data != null ? _i35.StartStatus.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i36.BackgroundInfo?>()) {
      return (data != null ? _i36.BackgroundInfo.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i37.UserInterest?>()) {
      return (data != null ? _i37.UserInterest.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i38.UserStatus?>()) {
      return (data != null ? _i38.UserStatus.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<List<_i39.Catagory>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i39.Catagory>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i39.Employe>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i39.Employe>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i40.Catagory>) {
      return (data as List).map((e) => deserialize<_i40.Catagory>(e)).toList()
          as dynamic;
    }
    if (t == List<_i41.Brand>) {
      return (data as List).map((e) => deserialize<_i41.Brand>(e)).toList()
          as dynamic;
    }
    if (t == List<_i42.Shop>) {
      return (data as List).map((e) => deserialize<_i42.Shop>(e)).toList()
          as dynamic;
    }
    try {
      return _i3.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i3.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i4.Address) {
      return 'Address';
    }
    if (data is _i5.Authentication) {
      return 'Authentication';
    }
    if (data is _i6.BizSize) {
      return 'BizSize';
    }
    if (data is _i7.Blocked) {
      return 'Blocked';
    }
    if (data is _i8.Brand) {
      return 'Brand';
    }
    if (data is _i9.Catagory) {
      return 'Catagory';
    }
    if (data is _i10.Employe) {
      return 'Employe';
    }
    if (data is _i11.Example) {
      return 'Example';
    }
    if (data is _i12.Follow) {
      return 'Follow';
    }
    if (data is _i13.GiftCard) {
      return 'GiftCard';
    }
    if (data is _i14.EndpointException) {
      return 'EndpointException';
    }
    if (data is _i15.InActiveProduct) {
      return 'InActiveProduct';
    }
    if (data is _i16.Item) {
      return 'Item';
    }
    if (data is _i17.Like) {
      return 'Like';
    }
    if (data is _i18.Notification) {
      return 'Notification';
    }
    if (data is _i19.NotificationType) {
      return 'NotificationType';
    }
    if (data is _i20.Order) {
      return 'Order';
    }
    if (data is _i21.OrderStatus) {
      return 'OrderStatus';
    }
    if (data is _i22.Policy) {
      return 'Policy';
    }
    if (data is _i23.Product) {
      return 'Product';
    }
    if (data is _i24.Report) {
      return 'Report';
    }
    if (data is _i25.ReportStatus) {
      return 'ReportStatus';
    }
    if (data is _i26.Sale) {
      return 'Sale';
    }
    if (data is _i27.Shop) {
      return 'Shop';
    }
    if (data is _i28.ShopAction) {
      return 'ShopAction';
    }
    if (data is _i29.ShopActivity) {
      return 'ShopActivity';
    }
    if (data is _i30.ShopPreference) {
      return 'ShopPreference';
    }
    if (data is _i31.ShopRate) {
      return 'ShopRate';
    }
    if (data is _i32.ShopReview) {
      return 'ShopReview';
    }
    if (data is _i33.ShopRole) {
      return 'ShopRole';
    }
    if (data is _i34.SignUpRequest) {
      return 'SignUpRequest';
    }
    if (data is _i35.StartStatus) {
      return 'StartStatus';
    }
    if (data is _i36.BackgroundInfo) {
      return 'BackgroundInfo';
    }
    if (data is _i37.UserInterest) {
      return 'UserInterest';
    }
    if (data is _i38.UserStatus) {
      return 'UserStatus';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i3.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Address') {
      return deserialize<_i4.Address>(data['data']);
    }
    if (data['className'] == 'Authentication') {
      return deserialize<_i5.Authentication>(data['data']);
    }
    if (data['className'] == 'BizSize') {
      return deserialize<_i6.BizSize>(data['data']);
    }
    if (data['className'] == 'Blocked') {
      return deserialize<_i7.Blocked>(data['data']);
    }
    if (data['className'] == 'Brand') {
      return deserialize<_i8.Brand>(data['data']);
    }
    if (data['className'] == 'Catagory') {
      return deserialize<_i9.Catagory>(data['data']);
    }
    if (data['className'] == 'Employe') {
      return deserialize<_i10.Employe>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i11.Example>(data['data']);
    }
    if (data['className'] == 'Follow') {
      return deserialize<_i12.Follow>(data['data']);
    }
    if (data['className'] == 'GiftCard') {
      return deserialize<_i13.GiftCard>(data['data']);
    }
    if (data['className'] == 'EndpointException') {
      return deserialize<_i14.EndpointException>(data['data']);
    }
    if (data['className'] == 'InActiveProduct') {
      return deserialize<_i15.InActiveProduct>(data['data']);
    }
    if (data['className'] == 'Item') {
      return deserialize<_i16.Item>(data['data']);
    }
    if (data['className'] == 'Like') {
      return deserialize<_i17.Like>(data['data']);
    }
    if (data['className'] == 'Notification') {
      return deserialize<_i18.Notification>(data['data']);
    }
    if (data['className'] == 'NotificationType') {
      return deserialize<_i19.NotificationType>(data['data']);
    }
    if (data['className'] == 'Order') {
      return deserialize<_i20.Order>(data['data']);
    }
    if (data['className'] == 'OrderStatus') {
      return deserialize<_i21.OrderStatus>(data['data']);
    }
    if (data['className'] == 'Policy') {
      return deserialize<_i22.Policy>(data['data']);
    }
    if (data['className'] == 'Product') {
      return deserialize<_i23.Product>(data['data']);
    }
    if (data['className'] == 'Report') {
      return deserialize<_i24.Report>(data['data']);
    }
    if (data['className'] == 'ReportStatus') {
      return deserialize<_i25.ReportStatus>(data['data']);
    }
    if (data['className'] == 'Sale') {
      return deserialize<_i26.Sale>(data['data']);
    }
    if (data['className'] == 'Shop') {
      return deserialize<_i27.Shop>(data['data']);
    }
    if (data['className'] == 'ShopAction') {
      return deserialize<_i28.ShopAction>(data['data']);
    }
    if (data['className'] == 'ShopActivity') {
      return deserialize<_i29.ShopActivity>(data['data']);
    }
    if (data['className'] == 'ShopPreference') {
      return deserialize<_i30.ShopPreference>(data['data']);
    }
    if (data['className'] == 'ShopRate') {
      return deserialize<_i31.ShopRate>(data['data']);
    }
    if (data['className'] == 'ShopReview') {
      return deserialize<_i32.ShopReview>(data['data']);
    }
    if (data['className'] == 'ShopRole') {
      return deserialize<_i33.ShopRole>(data['data']);
    }
    if (data['className'] == 'SignUpRequest') {
      return deserialize<_i34.SignUpRequest>(data['data']);
    }
    if (data['className'] == 'StartStatus') {
      return deserialize<_i35.StartStatus>(data['data']);
    }
    if (data['className'] == 'BackgroundInfo') {
      return deserialize<_i36.BackgroundInfo>(data['data']);
    }
    if (data['className'] == 'UserInterest') {
      return deserialize<_i37.UserInterest>(data['data']);
    }
    if (data['className'] == 'UserStatus') {
      return deserialize<_i38.UserStatus>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i3.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.Address:
        return _i4.Address.t;
      case _i7.Blocked:
        return _i7.Blocked.t;
      case _i8.Brand:
        return _i8.Brand.t;
      case _i9.Catagory:
        return _i9.Catagory.t;
      case _i10.Employe:
        return _i10.Employe.t;
      case _i12.Follow:
        return _i12.Follow.t;
      case _i13.GiftCard:
        return _i13.GiftCard.t;
      case _i15.InActiveProduct:
        return _i15.InActiveProduct.t;
      case _i16.Item:
        return _i16.Item.t;
      case _i17.Like:
        return _i17.Like.t;
      case _i18.Notification:
        return _i18.Notification.t;
      case _i20.Order:
        return _i20.Order.t;
      case _i22.Policy:
        return _i22.Policy.t;
      case _i23.Product:
        return _i23.Product.t;
      case _i24.Report:
        return _i24.Report.t;
      case _i26.Sale:
        return _i26.Sale.t;
      case _i27.Shop:
        return _i27.Shop.t;
      case _i29.ShopActivity:
        return _i29.ShopActivity.t;
      case _i30.ShopPreference:
        return _i30.ShopPreference.t;
      case _i32.ShopReview:
        return _i32.ShopReview.t;
      case _i34.SignUpRequest:
        return _i34.SignUpRequest.t;
      case _i36.BackgroundInfo:
        return _i36.BackgroundInfo.t;
      case _i37.UserInterest:
        return _i37.UserInterest.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bita_pod';
}
