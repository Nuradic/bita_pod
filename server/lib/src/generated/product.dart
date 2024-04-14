/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class Product extends _i1.TableRow {
  Product._({
    int? id,
    required this.name,
    this.image,
    required this.buyingPrice,
    required this.sellingPrice,
    this.brandId,
    this.brand,
    this.catagoryId,
    this.catagory,
    required this.shopId,
    this.shop,
  }) : super(id);

  factory Product({
    int? id,
    required String name,
    String? image,
    required double buyingPrice,
    required double sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    required int shopId,
    _i2.Shop? shop,
  }) = _ProductImpl;

  factory Product.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Product(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      image:
          serializationManager.deserialize<String?>(jsonSerialization['image']),
      buyingPrice: serializationManager
          .deserialize<double>(jsonSerialization['buyingPrice']),
      sellingPrice: serializationManager
          .deserialize<double>(jsonSerialization['sellingPrice']),
      brandId:
          serializationManager.deserialize<int?>(jsonSerialization['brandId']),
      brand: serializationManager
          .deserialize<_i2.Brand?>(jsonSerialization['brand']),
      catagoryId: serializationManager
          .deserialize<int?>(jsonSerialization['catagoryId']),
      catagory: serializationManager
          .deserialize<_i2.Catagory?>(jsonSerialization['catagory']),
      shopId:
          serializationManager.deserialize<int>(jsonSerialization['shopId']),
      shop: serializationManager
          .deserialize<_i2.Shop?>(jsonSerialization['shop']),
    );
  }

  static final t = ProductTable();

  static const db = ProductRepository._();

  String name;

  String? image;

  double buyingPrice;

  double sellingPrice;

  int? brandId;

  _i2.Brand? brand;

  int? catagoryId;

  _i2.Catagory? catagory;

  int shopId;

  _i2.Shop? shop;

  @override
  _i1.Table get table => t;

  Product copyWith({
    int? id,
    String? name,
    String? image,
    double? buyingPrice,
    double? sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    int? shopId,
    _i2.Shop? shop,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      'buyingPrice': buyingPrice,
      'sellingPrice': sellingPrice,
      if (brandId != null) 'brandId': brandId,
      if (brand != null) 'brand': brand?.toJson(),
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.toJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'buyingPrice': buyingPrice,
      'sellingPrice': sellingPrice,
      'brandId': brandId,
      'catagoryId': catagoryId,
      'shopId': shopId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      'buyingPrice': buyingPrice,
      'sellingPrice': sellingPrice,
      if (brandId != null) 'brandId': brandId,
      if (brand != null) 'brand': brand?.allToJson(),
      if (catagoryId != null) 'catagoryId': catagoryId,
      if (catagory != null) 'catagory': catagory?.allToJson(),
      'shopId': shopId,
      if (shop != null) 'shop': shop?.allToJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'image':
        image = value;
        return;
      case 'buyingPrice':
        buyingPrice = value;
        return;
      case 'sellingPrice':
        sellingPrice = value;
        return;
      case 'brandId':
        brandId = value;
        return;
      case 'catagoryId':
        catagoryId = value;
        return;
      case 'shopId':
        shopId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Product>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.db.find<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Product?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.db.findSingleRow<Product>(
      where: where != null ? where(Product.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Product?> findById(
    _i1.Session session,
    int id, {
    ProductInclude? include,
  }) async {
    return session.db.findById<Product>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Product>(
      where: where != null ? where(Product.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ProductInclude include({
    _i2.BrandInclude? brand,
    _i2.CatagoryInclude? catagory,
    _i2.ShopInclude? shop,
  }) {
    return ProductInclude._(
      brand: brand,
      catagory: catagory,
      shop: shop,
    );
  }

  static ProductIncludeList includeList({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    ProductInclude? include,
  }) {
    return ProductIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Product.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Product.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ProductImpl extends Product {
  _ProductImpl({
    int? id,
    required String name,
    String? image,
    required double buyingPrice,
    required double sellingPrice,
    int? brandId,
    _i2.Brand? brand,
    int? catagoryId,
    _i2.Catagory? catagory,
    required int shopId,
    _i2.Shop? shop,
  }) : super._(
          id: id,
          name: name,
          image: image,
          buyingPrice: buyingPrice,
          sellingPrice: sellingPrice,
          brandId: brandId,
          brand: brand,
          catagoryId: catagoryId,
          catagory: catagory,
          shopId: shopId,
          shop: shop,
        );

  @override
  Product copyWith({
    Object? id = _Undefined,
    String? name,
    Object? image = _Undefined,
    double? buyingPrice,
    double? sellingPrice,
    Object? brandId = _Undefined,
    Object? brand = _Undefined,
    Object? catagoryId = _Undefined,
    Object? catagory = _Undefined,
    int? shopId,
    Object? shop = _Undefined,
  }) {
    return Product(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      image: image is String? ? image : this.image,
      buyingPrice: buyingPrice ?? this.buyingPrice,
      sellingPrice: sellingPrice ?? this.sellingPrice,
      brandId: brandId is int? ? brandId : this.brandId,
      brand: brand is _i2.Brand? ? brand : this.brand?.copyWith(),
      catagoryId: catagoryId is int? ? catagoryId : this.catagoryId,
      catagory:
          catagory is _i2.Catagory? ? catagory : this.catagory?.copyWith(),
      shopId: shopId ?? this.shopId,
      shop: shop is _i2.Shop? ? shop : this.shop?.copyWith(),
    );
  }
}

class ProductTable extends _i1.Table {
  ProductTable({super.tableRelation}) : super(tableName: 'product') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    buyingPrice = _i1.ColumnDouble(
      'buyingPrice',
      this,
    );
    sellingPrice = _i1.ColumnDouble(
      'sellingPrice',
      this,
    );
    brandId = _i1.ColumnInt(
      'brandId',
      this,
    );
    catagoryId = _i1.ColumnInt(
      'catagoryId',
      this,
    );
    shopId = _i1.ColumnInt(
      'shopId',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString image;

  late final _i1.ColumnDouble buyingPrice;

  late final _i1.ColumnDouble sellingPrice;

  late final _i1.ColumnInt brandId;

  _i2.BrandTable? _brand;

  late final _i1.ColumnInt catagoryId;

  _i2.CatagoryTable? _catagory;

  late final _i1.ColumnInt shopId;

  _i2.ShopTable? _shop;

  _i2.BrandTable get brand {
    if (_brand != null) return _brand!;
    _brand = _i1.createRelationTable(
      relationFieldName: 'brand',
      field: Product.t.brandId,
      foreignField: _i2.Brand.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BrandTable(tableRelation: foreignTableRelation),
    );
    return _brand!;
  }

  _i2.CatagoryTable get catagory {
    if (_catagory != null) return _catagory!;
    _catagory = _i1.createRelationTable(
      relationFieldName: 'catagory',
      field: Product.t.catagoryId,
      foreignField: _i2.Catagory.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CatagoryTable(tableRelation: foreignTableRelation),
    );
    return _catagory!;
  }

  _i2.ShopTable get shop {
    if (_shop != null) return _shop!;
    _shop = _i1.createRelationTable(
      relationFieldName: 'shop',
      field: Product.t.shopId,
      foreignField: _i2.Shop.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.ShopTable(tableRelation: foreignTableRelation),
    );
    return _shop!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        image,
        buyingPrice,
        sellingPrice,
        brandId,
        catagoryId,
        shopId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'brand') {
      return brand;
    }
    if (relationField == 'catagory') {
      return catagory;
    }
    if (relationField == 'shop') {
      return shop;
    }
    return null;
  }
}

@Deprecated('Use ProductTable.t instead.')
ProductTable tProduct = ProductTable();

class ProductInclude extends _i1.IncludeObject {
  ProductInclude._({
    _i2.BrandInclude? brand,
    _i2.CatagoryInclude? catagory,
    _i2.ShopInclude? shop,
  }) {
    _brand = brand;
    _catagory = catagory;
    _shop = shop;
  }

  _i2.BrandInclude? _brand;

  _i2.CatagoryInclude? _catagory;

  _i2.ShopInclude? _shop;

  @override
  Map<String, _i1.Include?> get includes => {
        'brand': _brand,
        'catagory': _catagory,
        'shop': _shop,
      };

  @override
  _i1.Table get table => Product.t;
}

class ProductIncludeList extends _i1.IncludeList {
  ProductIncludeList._({
    _i1.WhereExpressionBuilder<ProductTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Product.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Product.t;
}

class ProductRepository {
  const ProductRepository._();

  final attachRow = const ProductAttachRowRepository._();

  final detachRow = const ProductDetachRowRepository._();

  Future<List<Product>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.dbNext.find<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Product?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProductTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProductTable>? orderByList,
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Product>(
      where: where?.call(Product.t),
      orderBy: orderBy?.call(Product.t),
      orderByList: orderByList?.call(Product.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Product?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    ProductInclude? include,
  }) async {
    return session.dbNext.findById<Product>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Product>> insert(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Product>(
      rows,
      transaction: transaction,
    );
  }

  Future<Product> insertRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Product>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Product>> update(
    _i1.Session session,
    List<Product> rows, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Product>(
      rows,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  Future<Product> updateRow(
    _i1.Session session,
    Product row, {
    _i1.ColumnSelections<ProductTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Product>(
      row,
      columns: columns?.call(Product.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Product> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Product>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Product row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Product>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProductTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Product>(
      where: where(Product.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProductTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Product>(
      where: where?.call(Product.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class ProductAttachRowRepository {
  const ProductAttachRowRepository._();

  Future<void> brand(
    _i1.Session session,
    Product product,
    _i2.Brand brand,
  ) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (brand.id == null) {
      throw ArgumentError.notNull('brand.id');
    }

    var $product = product.copyWith(brandId: brand.id);
    await session.dbNext.updateRow<Product>(
      $product,
      columns: [Product.t.brandId],
    );
  }

  Future<void> catagory(
    _i1.Session session,
    Product product,
    _i2.Catagory catagory,
  ) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (catagory.id == null) {
      throw ArgumentError.notNull('catagory.id');
    }

    var $product = product.copyWith(catagoryId: catagory.id);
    await session.dbNext.updateRow<Product>(
      $product,
      columns: [Product.t.catagoryId],
    );
  }

  Future<void> shop(
    _i1.Session session,
    Product product,
    _i2.Shop shop,
  ) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }
    if (shop.id == null) {
      throw ArgumentError.notNull('shop.id');
    }

    var $product = product.copyWith(shopId: shop.id);
    await session.dbNext.updateRow<Product>(
      $product,
      columns: [Product.t.shopId],
    );
  }
}

class ProductDetachRowRepository {
  const ProductDetachRowRepository._();

  Future<void> brand(
    _i1.Session session,
    Product product,
  ) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $product = product.copyWith(brandId: null);
    await session.dbNext.updateRow<Product>(
      $product,
      columns: [Product.t.brandId],
    );
  }

  Future<void> catagory(
    _i1.Session session,
    Product product,
  ) async {
    if (product.id == null) {
      throw ArgumentError.notNull('product.id');
    }

    var $product = product.copyWith(catagoryId: null);
    await session.dbNext.updateRow<Product>(
      $product,
      columns: [Product.t.catagoryId],
    );
  }
}
