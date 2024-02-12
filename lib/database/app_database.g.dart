// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CartItemsTable extends CartItems
    with TableInfo<$CartItemsTable, CartItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CartItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, productName, quantity, price];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cart_items';
  @override
  VerificationContext validateIntegrity(Insertable<CartItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CartItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CartItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
    );
  }

  @override
  $CartItemsTable createAlias(String alias) {
    return $CartItemsTable(attachedDatabase, alias);
  }
}

class CartItem extends DataClass implements Insertable<CartItem> {
  final int id;
  final String productName;
  final int quantity;
  final double price;
  const CartItem(
      {required this.id,
      required this.productName,
      required this.quantity,
      required this.price});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_name'] = Variable<String>(productName);
    map['quantity'] = Variable<int>(quantity);
    map['price'] = Variable<double>(price);
    return map;
  }

  CartItemsCompanion toCompanion(bool nullToAbsent) {
    return CartItemsCompanion(
      id: Value(id),
      productName: Value(productName),
      quantity: Value(quantity),
      price: Value(price),
    );
  }

  factory CartItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CartItem(
      id: serializer.fromJson<int>(json['id']),
      productName: serializer.fromJson<String>(json['productName']),
      quantity: serializer.fromJson<int>(json['quantity']),
      price: serializer.fromJson<double>(json['price']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productName': serializer.toJson<String>(productName),
      'quantity': serializer.toJson<int>(quantity),
      'price': serializer.toJson<double>(price),
    };
  }

  CartItem copyWith(
          {int? id, String? productName, int? quantity, double? price}) =>
      CartItem(
        id: id ?? this.id,
        productName: productName ?? this.productName,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
      );
  @override
  String toString() {
    return (StringBuffer('CartItem(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productName, quantity, price);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartItem &&
          other.id == this.id &&
          other.productName == this.productName &&
          other.quantity == this.quantity &&
          other.price == this.price);
}

class CartItemsCompanion extends UpdateCompanion<CartItem> {
  final Value<int> id;
  final Value<String> productName;
  final Value<int> quantity;
  final Value<double> price;
  const CartItemsCompanion({
    this.id = const Value.absent(),
    this.productName = const Value.absent(),
    this.quantity = const Value.absent(),
    this.price = const Value.absent(),
  });
  CartItemsCompanion.insert({
    this.id = const Value.absent(),
    required String productName,
    required int quantity,
    required double price,
  })  : productName = Value(productName),
        quantity = Value(quantity),
        price = Value(price);
  static Insertable<CartItem> custom({
    Expression<int>? id,
    Expression<String>? productName,
    Expression<int>? quantity,
    Expression<double>? price,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productName != null) 'product_name': productName,
      if (quantity != null) 'quantity': quantity,
      if (price != null) 'price': price,
    });
  }

  CartItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? productName,
      Value<int>? quantity,
      Value<double>? price}) {
    return CartItemsCompanion(
      id: id ?? this.id,
      productName: productName ?? this.productName,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartItemsCompanion(')
          ..write('id: $id, ')
          ..write('productName: $productName, ')
          ..write('quantity: $quantity, ')
          ..write('price: $price')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _stockCodeMeta =
      const VerificationMeta('stockCode');
  @override
  late final GeneratedColumn<int> stockCode = GeneratedColumn<int>(
      'Stockcode', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dietInfoMeta =
      const VerificationMeta('dietInfo');
  @override
  late final GeneratedColumn<String> dietInfo = GeneratedColumn<String>(
      'dietinfo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceDataMeta =
      const VerificationMeta('priceData');
  @override
  late final GeneratedColumn<String> priceData = GeneratedColumn<String>(
      'pricedata', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
      'price', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'DisplayName', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'Brand', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'Source', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ingredientsMeta =
      const VerificationMeta('ingredients');
  @override
  late final GeneratedColumn<String> ingredients = GeneratedColumn<String>(
      'ingredients', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _subCategoryMeta =
      const VerificationMeta('subCategory');
  @override
  late final GeneratedColumn<String> subCategory = GeneratedColumn<String>(
      'subcat', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        stockCode,
        dietInfo,
        priceData,
        price,
        displayName,
        brand,
        source,
        ingredients,
        subCategory,
        description
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('Stockcode')) {
      context.handle(_stockCodeMeta,
          stockCode.isAcceptableOrUnknown(data['Stockcode']!, _stockCodeMeta));
    }
    if (data.containsKey('dietinfo')) {
      context.handle(_dietInfoMeta,
          dietInfo.isAcceptableOrUnknown(data['dietinfo']!, _dietInfoMeta));
    }
    if (data.containsKey('pricedata')) {
      context.handle(_priceDataMeta,
          priceData.isAcceptableOrUnknown(data['pricedata']!, _priceDataMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('DisplayName')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['DisplayName']!, _displayNameMeta));
    }
    if (data.containsKey('Brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['Brand']!, _brandMeta));
    }
    if (data.containsKey('Source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['Source']!, _sourceMeta));
    }
    if (data.containsKey('ingredients')) {
      context.handle(
          _ingredientsMeta,
          ingredients.isAcceptableOrUnknown(
              data['ingredients']!, _ingredientsMeta));
    }
    if (data.containsKey('subcat')) {
      context.handle(_subCategoryMeta,
          subCategory.isAcceptableOrUnknown(data['subcat']!, _subCategoryMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {stockCode};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Product(
      stockCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}Stockcode'])!,
      dietInfo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dietinfo']),
      priceData: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pricedata']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DisplayName']),
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Brand']),
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}Source']),
      ingredients: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ingredients']),
      subCategory: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}subcat']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class Product extends DataClass implements Insertable<Product> {
  final int stockCode;
  final String? dietInfo;
  final String? priceData;
  final int? price;
  final String? displayName;
  final String? brand;
  final String? source;
  final String? ingredients;
  final String? subCategory;
  final String? description;
  const Product(
      {required this.stockCode,
      this.dietInfo,
      this.priceData,
      this.price,
      this.displayName,
      this.brand,
      this.source,
      this.ingredients,
      this.subCategory,
      this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['Stockcode'] = Variable<int>(stockCode);
    if (!nullToAbsent || dietInfo != null) {
      map['dietinfo'] = Variable<String>(dietInfo);
    }
    if (!nullToAbsent || priceData != null) {
      map['pricedata'] = Variable<String>(priceData);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<int>(price);
    }
    if (!nullToAbsent || displayName != null) {
      map['DisplayName'] = Variable<String>(displayName);
    }
    if (!nullToAbsent || brand != null) {
      map['Brand'] = Variable<String>(brand);
    }
    if (!nullToAbsent || source != null) {
      map['Source'] = Variable<String>(source);
    }
    if (!nullToAbsent || ingredients != null) {
      map['ingredients'] = Variable<String>(ingredients);
    }
    if (!nullToAbsent || subCategory != null) {
      map['subcat'] = Variable<String>(subCategory);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      stockCode: Value(stockCode),
      dietInfo: dietInfo == null && nullToAbsent
          ? const Value.absent()
          : Value(dietInfo),
      priceData: priceData == null && nullToAbsent
          ? const Value.absent()
          : Value(priceData),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
      brand:
          brand == null && nullToAbsent ? const Value.absent() : Value(brand),
      source:
          source == null && nullToAbsent ? const Value.absent() : Value(source),
      ingredients: ingredients == null && nullToAbsent
          ? const Value.absent()
          : Value(ingredients),
      subCategory: subCategory == null && nullToAbsent
          ? const Value.absent()
          : Value(subCategory),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Product(
      stockCode: serializer.fromJson<int>(json['stockCode']),
      dietInfo: serializer.fromJson<String?>(json['dietInfo']),
      priceData: serializer.fromJson<String?>(json['priceData']),
      price: serializer.fromJson<int?>(json['price']),
      displayName: serializer.fromJson<String?>(json['displayName']),
      brand: serializer.fromJson<String?>(json['brand']),
      source: serializer.fromJson<String?>(json['source']),
      ingredients: serializer.fromJson<String?>(json['ingredients']),
      subCategory: serializer.fromJson<String?>(json['subCategory']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'stockCode': serializer.toJson<int>(stockCode),
      'dietInfo': serializer.toJson<String?>(dietInfo),
      'priceData': serializer.toJson<String?>(priceData),
      'price': serializer.toJson<int?>(price),
      'displayName': serializer.toJson<String?>(displayName),
      'brand': serializer.toJson<String?>(brand),
      'source': serializer.toJson<String?>(source),
      'ingredients': serializer.toJson<String?>(ingredients),
      'subCategory': serializer.toJson<String?>(subCategory),
      'description': serializer.toJson<String?>(description),
    };
  }

  Product copyWith(
          {int? stockCode,
          Value<String?> dietInfo = const Value.absent(),
          Value<String?> priceData = const Value.absent(),
          Value<int?> price = const Value.absent(),
          Value<String?> displayName = const Value.absent(),
          Value<String?> brand = const Value.absent(),
          Value<String?> source = const Value.absent(),
          Value<String?> ingredients = const Value.absent(),
          Value<String?> subCategory = const Value.absent(),
          Value<String?> description = const Value.absent()}) =>
      Product(
        stockCode: stockCode ?? this.stockCode,
        dietInfo: dietInfo.present ? dietInfo.value : this.dietInfo,
        priceData: priceData.present ? priceData.value : this.priceData,
        price: price.present ? price.value : this.price,
        displayName: displayName.present ? displayName.value : this.displayName,
        brand: brand.present ? brand.value : this.brand,
        source: source.present ? source.value : this.source,
        ingredients: ingredients.present ? ingredients.value : this.ingredients,
        subCategory: subCategory.present ? subCategory.value : this.subCategory,
        description: description.present ? description.value : this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('stockCode: $stockCode, ')
          ..write('dietInfo: $dietInfo, ')
          ..write('priceData: $priceData, ')
          ..write('price: $price, ')
          ..write('displayName: $displayName, ')
          ..write('brand: $brand, ')
          ..write('source: $source, ')
          ..write('ingredients: $ingredients, ')
          ..write('subCategory: $subCategory, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(stockCode, dietInfo, priceData, price,
      displayName, brand, source, ingredients, subCategory, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.stockCode == this.stockCode &&
          other.dietInfo == this.dietInfo &&
          other.priceData == this.priceData &&
          other.price == this.price &&
          other.displayName == this.displayName &&
          other.brand == this.brand &&
          other.source == this.source &&
          other.ingredients == this.ingredients &&
          other.subCategory == this.subCategory &&
          other.description == this.description);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> stockCode;
  final Value<String?> dietInfo;
  final Value<String?> priceData;
  final Value<int?> price;
  final Value<String?> displayName;
  final Value<String?> brand;
  final Value<String?> source;
  final Value<String?> ingredients;
  final Value<String?> subCategory;
  final Value<String?> description;
  const ProductsCompanion({
    this.stockCode = const Value.absent(),
    this.dietInfo = const Value.absent(),
    this.priceData = const Value.absent(),
    this.price = const Value.absent(),
    this.displayName = const Value.absent(),
    this.brand = const Value.absent(),
    this.source = const Value.absent(),
    this.ingredients = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.description = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.stockCode = const Value.absent(),
    this.dietInfo = const Value.absent(),
    this.priceData = const Value.absent(),
    this.price = const Value.absent(),
    this.displayName = const Value.absent(),
    this.brand = const Value.absent(),
    this.source = const Value.absent(),
    this.ingredients = const Value.absent(),
    this.subCategory = const Value.absent(),
    this.description = const Value.absent(),
  });
  static Insertable<Product> custom({
    Expression<int>? stockCode,
    Expression<String>? dietInfo,
    Expression<String>? priceData,
    Expression<int>? price,
    Expression<String>? displayName,
    Expression<String>? brand,
    Expression<String>? source,
    Expression<String>? ingredients,
    Expression<String>? subCategory,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (stockCode != null) 'Stockcode': stockCode,
      if (dietInfo != null) 'dietinfo': dietInfo,
      if (priceData != null) 'pricedata': priceData,
      if (price != null) 'price': price,
      if (displayName != null) 'DisplayName': displayName,
      if (brand != null) 'Brand': brand,
      if (source != null) 'Source': source,
      if (ingredients != null) 'ingredients': ingredients,
      if (subCategory != null) 'subcat': subCategory,
      if (description != null) 'description': description,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? stockCode,
      Value<String?>? dietInfo,
      Value<String?>? priceData,
      Value<int?>? price,
      Value<String?>? displayName,
      Value<String?>? brand,
      Value<String?>? source,
      Value<String?>? ingredients,
      Value<String?>? subCategory,
      Value<String?>? description}) {
    return ProductsCompanion(
      stockCode: stockCode ?? this.stockCode,
      dietInfo: dietInfo ?? this.dietInfo,
      priceData: priceData ?? this.priceData,
      price: price ?? this.price,
      displayName: displayName ?? this.displayName,
      brand: brand ?? this.brand,
      source: source ?? this.source,
      ingredients: ingredients ?? this.ingredients,
      subCategory: subCategory ?? this.subCategory,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (stockCode.present) {
      map['Stockcode'] = Variable<int>(stockCode.value);
    }
    if (dietInfo.present) {
      map['dietinfo'] = Variable<String>(dietInfo.value);
    }
    if (priceData.present) {
      map['pricedata'] = Variable<String>(priceData.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (displayName.present) {
      map['DisplayName'] = Variable<String>(displayName.value);
    }
    if (brand.present) {
      map['Brand'] = Variable<String>(brand.value);
    }
    if (source.present) {
      map['Source'] = Variable<String>(source.value);
    }
    if (ingredients.present) {
      map['ingredients'] = Variable<String>(ingredients.value);
    }
    if (subCategory.present) {
      map['subcat'] = Variable<String>(subCategory.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('stockCode: $stockCode, ')
          ..write('dietInfo: $dietInfo, ')
          ..write('priceData: $priceData, ')
          ..write('price: $price, ')
          ..write('displayName: $displayName, ')
          ..write('brand: $brand, ')
          ..write('source: $source, ')
          ..write('ingredients: $ingredients, ')
          ..write('subCategory: $subCategory, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $MarkedItemsTable extends MarkedItems
    with TableInfo<$MarkedItemsTable, MarkedItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MarkedItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES products(stockCode)');
  @override
  List<GeneratedColumn> get $columns => [id, productId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'marked_items';
  @override
  VerificationContext validateIntegrity(Insertable<MarkedItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MarkedItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MarkedItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id'])!,
    );
  }

  @override
  $MarkedItemsTable createAlias(String alias) {
    return $MarkedItemsTable(attachedDatabase, alias);
  }
}

class MarkedItem extends DataClass implements Insertable<MarkedItem> {
  final int id;
  final int productId;
  const MarkedItem({required this.id, required this.productId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    return map;
  }

  MarkedItemsCompanion toCompanion(bool nullToAbsent) {
    return MarkedItemsCompanion(
      id: Value(id),
      productId: Value(productId),
    );
  }

  factory MarkedItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MarkedItem(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
    };
  }

  MarkedItem copyWith({int? id, int? productId}) => MarkedItem(
        id: id ?? this.id,
        productId: productId ?? this.productId,
      );
  @override
  String toString() {
    return (StringBuffer('MarkedItem(')
          ..write('id: $id, ')
          ..write('productId: $productId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MarkedItem &&
          other.id == this.id &&
          other.productId == this.productId);
}

class MarkedItemsCompanion extends UpdateCompanion<MarkedItem> {
  final Value<int> id;
  final Value<int> productId;
  const MarkedItemsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
  });
  MarkedItemsCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
  }) : productId = Value(productId);
  static Insertable<MarkedItem> custom({
    Expression<int>? id,
    Expression<int>? productId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
    });
  }

  MarkedItemsCompanion copyWith({Value<int>? id, Value<int>? productId}) {
    return MarkedItemsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MarkedItemsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId')
          ..write(')'))
        .toString();
  }
}

class $PantryItemsTable extends PantryItems
    with TableInfo<$PantryItemsTable, PantryItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PantryItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NULL REFERENCES products(stockCode)');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, productId, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pantry_items';
  @override
  VerificationContext validateIntegrity(Insertable<PantryItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PantryItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PantryItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $PantryItemsTable createAlias(String alias) {
    return $PantryItemsTable(attachedDatabase, alias);
  }
}

class PantryItem extends DataClass implements Insertable<PantryItem> {
  final int id;
  final int? productId;
  final String? name;
  const PantryItem({required this.id, this.productId, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  PantryItemsCompanion toCompanion(bool nullToAbsent) {
    return PantryItemsCompanion(
      id: Value(id),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory PantryItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PantryItem(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int?>(json['productId']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int?>(productId),
      'name': serializer.toJson<String?>(name),
    };
  }

  PantryItem copyWith(
          {int? id,
          Value<int?> productId = const Value.absent(),
          Value<String?> name = const Value.absent()}) =>
      PantryItem(
        id: id ?? this.id,
        productId: productId.present ? productId.value : this.productId,
        name: name.present ? name.value : this.name,
      );
  @override
  String toString() {
    return (StringBuffer('PantryItem(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PantryItem &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.name == this.name);
}

class PantryItemsCompanion extends UpdateCompanion<PantryItem> {
  final Value<int> id;
  final Value<int?> productId;
  final Value<String?> name;
  const PantryItemsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
  });
  PantryItemsCompanion.insert({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<PantryItem> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (name != null) 'name': name,
    });
  }

  PantryItemsCompanion copyWith(
      {Value<int>? id, Value<int?>? productId, Value<String?>? name}) {
    return PantryItemsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PantryItemsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ProdIngredientsTable extends ProdIngredients
    with TableInfo<$ProdIngredientsTable, ProdIngredient> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdIngredientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES products(stockCode) NOT NULL');
  static const VerificationMeta _ingredientMeta =
      const VerificationMeta('ingredient');
  @override
  late final GeneratedColumn<String> ingredient = GeneratedColumn<String>(
      'ingredient', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, productId, ingredient];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'prod_ingredients';
  @override
  VerificationContext validateIntegrity(Insertable<ProdIngredient> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('ingredient')) {
      context.handle(
          _ingredientMeta,
          ingredient.isAcceptableOrUnknown(
              data['ingredient']!, _ingredientMeta));
    } else if (isInserting) {
      context.missing(_ingredientMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProdIngredient map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProdIngredient(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id'])!,
      ingredient: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ingredient'])!,
    );
  }

  @override
  $ProdIngredientsTable createAlias(String alias) {
    return $ProdIngredientsTable(attachedDatabase, alias);
  }
}

class ProdIngredient extends DataClass implements Insertable<ProdIngredient> {
  final int id;
  final int productId;
  final String ingredient;
  const ProdIngredient(
      {required this.id, required this.productId, required this.ingredient});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['product_id'] = Variable<int>(productId);
    map['ingredient'] = Variable<String>(ingredient);
    return map;
  }

  ProdIngredientsCompanion toCompanion(bool nullToAbsent) {
    return ProdIngredientsCompanion(
      id: Value(id),
      productId: Value(productId),
      ingredient: Value(ingredient),
    );
  }

  factory ProdIngredient.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProdIngredient(
      id: serializer.fromJson<int>(json['id']),
      productId: serializer.fromJson<int>(json['productId']),
      ingredient: serializer.fromJson<String>(json['ingredient']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'productId': serializer.toJson<int>(productId),
      'ingredient': serializer.toJson<String>(ingredient),
    };
  }

  ProdIngredient copyWith({int? id, int? productId, String? ingredient}) =>
      ProdIngredient(
        id: id ?? this.id,
        productId: productId ?? this.productId,
        ingredient: ingredient ?? this.ingredient,
      );
  @override
  String toString() {
    return (StringBuffer('ProdIngredient(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('ingredient: $ingredient')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, productId, ingredient);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProdIngredient &&
          other.id == this.id &&
          other.productId == this.productId &&
          other.ingredient == this.ingredient);
}

class ProdIngredientsCompanion extends UpdateCompanion<ProdIngredient> {
  final Value<int> id;
  final Value<int> productId;
  final Value<String> ingredient;
  const ProdIngredientsCompanion({
    this.id = const Value.absent(),
    this.productId = const Value.absent(),
    this.ingredient = const Value.absent(),
  });
  ProdIngredientsCompanion.insert({
    this.id = const Value.absent(),
    required int productId,
    required String ingredient,
  })  : productId = Value(productId),
        ingredient = Value(ingredient);
  static Insertable<ProdIngredient> custom({
    Expression<int>? id,
    Expression<int>? productId,
    Expression<String>? ingredient,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (productId != null) 'product_id': productId,
      if (ingredient != null) 'ingredient': ingredient,
    });
  }

  ProdIngredientsCompanion copyWith(
      {Value<int>? id, Value<int>? productId, Value<String>? ingredient}) {
    return ProdIngredientsCompanion(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      ingredient: ingredient ?? this.ingredient,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (ingredient.present) {
      map['ingredient'] = Variable<String>(ingredient.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdIngredientsCompanion(')
          ..write('id: $id, ')
          ..write('productId: $productId, ')
          ..write('ingredient: $ingredient')
          ..write(')'))
        .toString();
  }
}

class $RecipesTable extends Recipes with TableInfo<$RecipesTable, Recipe> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _servingSizeMeta =
      const VerificationMeta('servingSize');
  @override
  late final GeneratedColumn<int> servingSize = GeneratedColumn<int>(
      'serving_size', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cookingTimeMeta =
      const VerificationMeta('cookingTime');
  @override
  late final GeneratedColumn<int> cookingTime = GeneratedColumn<int>(
      'cooking_time', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<String> difficulty = GeneratedColumn<String>(
      'difficulty', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _variationMeta =
      const VerificationMeta('variation');
  @override
  late final GeneratedColumn<String> variation = GeneratedColumn<String>(
      'variation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, description, servingSize, cookingTime, difficulty, variation];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipes';
  @override
  VerificationContext validateIntegrity(Insertable<Recipe> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('serving_size')) {
      context.handle(
          _servingSizeMeta,
          servingSize.isAcceptableOrUnknown(
              data['serving_size']!, _servingSizeMeta));
    }
    if (data.containsKey('cooking_time')) {
      context.handle(
          _cookingTimeMeta,
          cookingTime.isAcceptableOrUnknown(
              data['cooking_time']!, _cookingTimeMeta));
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    }
    if (data.containsKey('variation')) {
      context.handle(_variationMeta,
          variation.isAcceptableOrUnknown(data['variation']!, _variationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Recipe map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Recipe(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      servingSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}serving_size']),
      cookingTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cooking_time']),
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}difficulty']),
      variation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}variation']),
    );
  }

  @override
  $RecipesTable createAlias(String alias) {
    return $RecipesTable(attachedDatabase, alias);
  }
}

class Recipe extends DataClass implements Insertable<Recipe> {
  final int id;
  final String? name;
  final String? description;
  final int? servingSize;
  final int? cookingTime;
  final String? difficulty;
  final String? variation;
  const Recipe(
      {required this.id,
      this.name,
      this.description,
      this.servingSize,
      this.cookingTime,
      this.difficulty,
      this.variation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || servingSize != null) {
      map['serving_size'] = Variable<int>(servingSize);
    }
    if (!nullToAbsent || cookingTime != null) {
      map['cooking_time'] = Variable<int>(cookingTime);
    }
    if (!nullToAbsent || difficulty != null) {
      map['difficulty'] = Variable<String>(difficulty);
    }
    if (!nullToAbsent || variation != null) {
      map['variation'] = Variable<String>(variation);
    }
    return map;
  }

  RecipesCompanion toCompanion(bool nullToAbsent) {
    return RecipesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      servingSize: servingSize == null && nullToAbsent
          ? const Value.absent()
          : Value(servingSize),
      cookingTime: cookingTime == null && nullToAbsent
          ? const Value.absent()
          : Value(cookingTime),
      difficulty: difficulty == null && nullToAbsent
          ? const Value.absent()
          : Value(difficulty),
      variation: variation == null && nullToAbsent
          ? const Value.absent()
          : Value(variation),
    );
  }

  factory Recipe.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Recipe(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      servingSize: serializer.fromJson<int?>(json['servingSize']),
      cookingTime: serializer.fromJson<int?>(json['cookingTime']),
      difficulty: serializer.fromJson<String?>(json['difficulty']),
      variation: serializer.fromJson<String?>(json['variation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'description': serializer.toJson<String?>(description),
      'servingSize': serializer.toJson<int?>(servingSize),
      'cookingTime': serializer.toJson<int?>(cookingTime),
      'difficulty': serializer.toJson<String?>(difficulty),
      'variation': serializer.toJson<String?>(variation),
    };
  }

  Recipe copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<int?> servingSize = const Value.absent(),
          Value<int?> cookingTime = const Value.absent(),
          Value<String?> difficulty = const Value.absent(),
          Value<String?> variation = const Value.absent()}) =>
      Recipe(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        description: description.present ? description.value : this.description,
        servingSize: servingSize.present ? servingSize.value : this.servingSize,
        cookingTime: cookingTime.present ? cookingTime.value : this.cookingTime,
        difficulty: difficulty.present ? difficulty.value : this.difficulty,
        variation: variation.present ? variation.value : this.variation,
      );
  @override
  String toString() {
    return (StringBuffer('Recipe(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('servingSize: $servingSize, ')
          ..write('cookingTime: $cookingTime, ')
          ..write('difficulty: $difficulty, ')
          ..write('variation: $variation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, description, servingSize, cookingTime, difficulty, variation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Recipe &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.servingSize == this.servingSize &&
          other.cookingTime == this.cookingTime &&
          other.difficulty == this.difficulty &&
          other.variation == this.variation);
}

class RecipesCompanion extends UpdateCompanion<Recipe> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> description;
  final Value<int?> servingSize;
  final Value<int?> cookingTime;
  final Value<String?> difficulty;
  final Value<String?> variation;
  const RecipesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.servingSize = const Value.absent(),
    this.cookingTime = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.variation = const Value.absent(),
  });
  RecipesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.servingSize = const Value.absent(),
    this.cookingTime = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.variation = const Value.absent(),
  });
  static Insertable<Recipe> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<int>? servingSize,
    Expression<int>? cookingTime,
    Expression<String>? difficulty,
    Expression<String>? variation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (servingSize != null) 'serving_size': servingSize,
      if (cookingTime != null) 'cooking_time': cookingTime,
      if (difficulty != null) 'difficulty': difficulty,
      if (variation != null) 'variation': variation,
    });
  }

  RecipesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? name,
      Value<String?>? description,
      Value<int?>? servingSize,
      Value<int?>? cookingTime,
      Value<String?>? difficulty,
      Value<String?>? variation}) {
    return RecipesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      servingSize: servingSize ?? this.servingSize,
      cookingTime: cookingTime ?? this.cookingTime,
      difficulty: difficulty ?? this.difficulty,
      variation: variation ?? this.variation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (servingSize.present) {
      map['serving_size'] = Variable<int>(servingSize.value);
    }
    if (cookingTime.present) {
      map['cooking_time'] = Variable<int>(cookingTime.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<String>(difficulty.value);
    }
    if (variation.present) {
      map['variation'] = Variable<String>(variation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('servingSize: $servingSize, ')
          ..write('cookingTime: $cookingTime, ')
          ..write('difficulty: $difficulty, ')
          ..write('variation: $variation')
          ..write(')'))
        .toString();
  }
}

class $RecipeIngredientsTable extends RecipeIngredients
    with TableInfo<$RecipeIngredientsTable, RecipeIngredient> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecipeIngredientsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _recipeIdMeta =
      const VerificationMeta('recipeId');
  @override
  late final GeneratedColumn<int> recipeId = GeneratedColumn<int>(
      'recipe_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES recipes(id) NOT NULL');
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<int> productId = GeneratedColumn<int>(
      'product_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NULL REFERENCES products(stockCode)');
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<String> amount = GeneratedColumn<String>(
      'amount', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
      'unit', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, recipeId, name, productId, amount, unit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'recipe_ingredients';
  @override
  VerificationContext validateIntegrity(Insertable<RecipeIngredient> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('recipe_id')) {
      context.handle(_recipeIdMeta,
          recipeId.isAcceptableOrUnknown(data['recipe_id']!, _recipeIdMeta));
    } else if (isInserting) {
      context.missing(_recipeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
          _unitMeta, unit.isAcceptableOrUnknown(data['unit']!, _unitMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecipeIngredient map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecipeIngredient(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      recipeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}recipe_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_id']),
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}amount'])!,
      unit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit']),
    );
  }

  @override
  $RecipeIngredientsTable createAlias(String alias) {
    return $RecipeIngredientsTable(attachedDatabase, alias);
  }
}

class RecipeIngredient extends DataClass
    implements Insertable<RecipeIngredient> {
  final int id;
  final int recipeId;
  final String name;
  final int? productId;
  final String amount;
  final String? unit;
  const RecipeIngredient(
      {required this.id,
      required this.recipeId,
      required this.name,
      this.productId,
      required this.amount,
      this.unit});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['recipe_id'] = Variable<int>(recipeId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || productId != null) {
      map['product_id'] = Variable<int>(productId);
    }
    map['amount'] = Variable<String>(amount);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    return map;
  }

  RecipeIngredientsCompanion toCompanion(bool nullToAbsent) {
    return RecipeIngredientsCompanion(
      id: Value(id),
      recipeId: Value(recipeId),
      name: Value(name),
      productId: productId == null && nullToAbsent
          ? const Value.absent()
          : Value(productId),
      amount: Value(amount),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
    );
  }

  factory RecipeIngredient.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecipeIngredient(
      id: serializer.fromJson<int>(json['id']),
      recipeId: serializer.fromJson<int>(json['recipeId']),
      name: serializer.fromJson<String>(json['name']),
      productId: serializer.fromJson<int?>(json['productId']),
      amount: serializer.fromJson<String>(json['amount']),
      unit: serializer.fromJson<String?>(json['unit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recipeId': serializer.toJson<int>(recipeId),
      'name': serializer.toJson<String>(name),
      'productId': serializer.toJson<int?>(productId),
      'amount': serializer.toJson<String>(amount),
      'unit': serializer.toJson<String?>(unit),
    };
  }

  RecipeIngredient copyWith(
          {int? id,
          int? recipeId,
          String? name,
          Value<int?> productId = const Value.absent(),
          String? amount,
          Value<String?> unit = const Value.absent()}) =>
      RecipeIngredient(
        id: id ?? this.id,
        recipeId: recipeId ?? this.recipeId,
        name: name ?? this.name,
        productId: productId.present ? productId.value : this.productId,
        amount: amount ?? this.amount,
        unit: unit.present ? unit.value : this.unit,
      );
  @override
  String toString() {
    return (StringBuffer('RecipeIngredient(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('productId: $productId, ')
          ..write('amount: $amount, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recipeId, name, productId, amount, unit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecipeIngredient &&
          other.id == this.id &&
          other.recipeId == this.recipeId &&
          other.name == this.name &&
          other.productId == this.productId &&
          other.amount == this.amount &&
          other.unit == this.unit);
}

class RecipeIngredientsCompanion extends UpdateCompanion<RecipeIngredient> {
  final Value<int> id;
  final Value<int> recipeId;
  final Value<String> name;
  final Value<int?> productId;
  final Value<String> amount;
  final Value<String?> unit;
  const RecipeIngredientsCompanion({
    this.id = const Value.absent(),
    this.recipeId = const Value.absent(),
    this.name = const Value.absent(),
    this.productId = const Value.absent(),
    this.amount = const Value.absent(),
    this.unit = const Value.absent(),
  });
  RecipeIngredientsCompanion.insert({
    this.id = const Value.absent(),
    required int recipeId,
    required String name,
    this.productId = const Value.absent(),
    required String amount,
    this.unit = const Value.absent(),
  })  : recipeId = Value(recipeId),
        name = Value(name),
        amount = Value(amount);
  static Insertable<RecipeIngredient> custom({
    Expression<int>? id,
    Expression<int>? recipeId,
    Expression<String>? name,
    Expression<int>? productId,
    Expression<String>? amount,
    Expression<String>? unit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recipeId != null) 'recipe_id': recipeId,
      if (name != null) 'name': name,
      if (productId != null) 'product_id': productId,
      if (amount != null) 'amount': amount,
      if (unit != null) 'unit': unit,
    });
  }

  RecipeIngredientsCompanion copyWith(
      {Value<int>? id,
      Value<int>? recipeId,
      Value<String>? name,
      Value<int?>? productId,
      Value<String>? amount,
      Value<String?>? unit}) {
    return RecipeIngredientsCompanion(
      id: id ?? this.id,
      recipeId: recipeId ?? this.recipeId,
      name: name ?? this.name,
      productId: productId ?? this.productId,
      amount: amount ?? this.amount,
      unit: unit ?? this.unit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recipeId.present) {
      map['recipe_id'] = Variable<int>(recipeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<int>(productId.value);
    }
    if (amount.present) {
      map['amount'] = Variable<String>(amount.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecipeIngredientsCompanion(')
          ..write('id: $id, ')
          ..write('recipeId: $recipeId, ')
          ..write('name: $name, ')
          ..write('productId: $productId, ')
          ..write('amount: $amount, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 4, maxTextLength: 128),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email =
      GeneratedColumn<String>('email', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          $customConstraints: 'UNIQUE NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, username, email];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String username;
  final String email;
  const User({required this.id, required this.username, required this.email});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    map['email'] = Variable<String>(email);
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      username: Value(username),
      email: Value(email),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      email: serializer.fromJson<String>(json['email']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'email': serializer.toJson<String>(email),
    };
  }

  User copyWith({int? id, String? username, String? email}) => User(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, username, email);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.username == this.username &&
          other.email == this.email);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> username;
  final Value<String> email;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.email = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    required String email,
  })  : username = Value(username),
        email = Value(email);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? email,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (email != null) 'email': email,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id, Value<String>? username, Value<String>? email}) {
    return UsersCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('email: $email')
          ..write(')'))
        .toString();
  }
}

class $ShopHistoriesTable extends ShopHistories
    with TableInfo<$ShopHistoriesTable, ShopHistory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ShopHistoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'NULL REFERENCES users(id)');
  static const VerificationMeta _cartSnapshotMeta =
      const VerificationMeta('cartSnapshot');
  @override
  late final GeneratedColumn<String> cartSnapshot = GeneratedColumn<String>(
      'cart_snapshot', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'timestamp', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedColumn<double> totalAmount = GeneratedColumn<double>(
      'total_amount', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, cartSnapshot, timestamp, totalAmount];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'shop_histories';
  @override
  VerificationContext validateIntegrity(Insertable<ShopHistory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('cart_snapshot')) {
      context.handle(
          _cartSnapshotMeta,
          cartSnapshot.isAcceptableOrUnknown(
              data['cart_snapshot']!, _cartSnapshotMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    }
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ShopHistory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ShopHistory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id']),
      cartSnapshot: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cart_snapshot']),
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}timestamp']),
      totalAmount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_amount']),
    );
  }

  @override
  $ShopHistoriesTable createAlias(String alias) {
    return $ShopHistoriesTable(attachedDatabase, alias);
  }
}

class ShopHistory extends DataClass implements Insertable<ShopHistory> {
  final int id;
  final int? userId;
  final String? cartSnapshot;
  final DateTime? timestamp;
  final double? totalAmount;
  const ShopHistory(
      {required this.id,
      this.userId,
      this.cartSnapshot,
      this.timestamp,
      this.totalAmount});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || cartSnapshot != null) {
      map['cart_snapshot'] = Variable<String>(cartSnapshot);
    }
    if (!nullToAbsent || timestamp != null) {
      map['timestamp'] = Variable<DateTime>(timestamp);
    }
    if (!nullToAbsent || totalAmount != null) {
      map['total_amount'] = Variable<double>(totalAmount);
    }
    return map;
  }

  ShopHistoriesCompanion toCompanion(bool nullToAbsent) {
    return ShopHistoriesCompanion(
      id: Value(id),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      cartSnapshot: cartSnapshot == null && nullToAbsent
          ? const Value.absent()
          : Value(cartSnapshot),
      timestamp: timestamp == null && nullToAbsent
          ? const Value.absent()
          : Value(timestamp),
      totalAmount: totalAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(totalAmount),
    );
  }

  factory ShopHistory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ShopHistory(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int?>(json['userId']),
      cartSnapshot: serializer.fromJson<String?>(json['cartSnapshot']),
      timestamp: serializer.fromJson<DateTime?>(json['timestamp']),
      totalAmount: serializer.fromJson<double?>(json['totalAmount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int?>(userId),
      'cartSnapshot': serializer.toJson<String?>(cartSnapshot),
      'timestamp': serializer.toJson<DateTime?>(timestamp),
      'totalAmount': serializer.toJson<double?>(totalAmount),
    };
  }

  ShopHistory copyWith(
          {int? id,
          Value<int?> userId = const Value.absent(),
          Value<String?> cartSnapshot = const Value.absent(),
          Value<DateTime?> timestamp = const Value.absent(),
          Value<double?> totalAmount = const Value.absent()}) =>
      ShopHistory(
        id: id ?? this.id,
        userId: userId.present ? userId.value : this.userId,
        cartSnapshot:
            cartSnapshot.present ? cartSnapshot.value : this.cartSnapshot,
        timestamp: timestamp.present ? timestamp.value : this.timestamp,
        totalAmount: totalAmount.present ? totalAmount.value : this.totalAmount,
      );
  @override
  String toString() {
    return (StringBuffer('ShopHistory(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('cartSnapshot: $cartSnapshot, ')
          ..write('timestamp: $timestamp, ')
          ..write('totalAmount: $totalAmount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, cartSnapshot, timestamp, totalAmount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ShopHistory &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.cartSnapshot == this.cartSnapshot &&
          other.timestamp == this.timestamp &&
          other.totalAmount == this.totalAmount);
}

class ShopHistoriesCompanion extends UpdateCompanion<ShopHistory> {
  final Value<int> id;
  final Value<int?> userId;
  final Value<String?> cartSnapshot;
  final Value<DateTime?> timestamp;
  final Value<double?> totalAmount;
  const ShopHistoriesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.cartSnapshot = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.totalAmount = const Value.absent(),
  });
  ShopHistoriesCompanion.insert({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.cartSnapshot = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.totalAmount = const Value.absent(),
  });
  static Insertable<ShopHistory> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? cartSnapshot,
    Expression<DateTime>? timestamp,
    Expression<double>? totalAmount,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (cartSnapshot != null) 'cart_snapshot': cartSnapshot,
      if (timestamp != null) 'timestamp': timestamp,
      if (totalAmount != null) 'total_amount': totalAmount,
    });
  }

  ShopHistoriesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? userId,
      Value<String?>? cartSnapshot,
      Value<DateTime?>? timestamp,
      Value<double?>? totalAmount}) {
    return ShopHistoriesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      cartSnapshot: cartSnapshot ?? this.cartSnapshot,
      timestamp: timestamp ?? this.timestamp,
      totalAmount: totalAmount ?? this.totalAmount,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (cartSnapshot.present) {
      map['cart_snapshot'] = Variable<String>(cartSnapshot.value);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<DateTime>(timestamp.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ShopHistoriesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('cartSnapshot: $cartSnapshot, ')
          ..write('timestamp: $timestamp, ')
          ..write('totalAmount: $totalAmount')
          ..write(')'))
        .toString();
  }
}

class $StoresTable extends Stores with TableInfo<$StoresTable, Store> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name, location];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stores';
  @override
  VerificationContext validateIntegrity(Insertable<Store> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Store map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Store(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location']),
    );
  }

  @override
  $StoresTable createAlias(String alias) {
    return $StoresTable(attachedDatabase, alias);
  }
}

class Store extends DataClass implements Insertable<Store> {
  final int id;
  final String? name;
  final String? location;
  const Store({required this.id, this.name, this.location});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || location != null) {
      map['location'] = Variable<String>(location);
    }
    return map;
  }

  StoresCompanion toCompanion(bool nullToAbsent) {
    return StoresCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      location: location == null && nullToAbsent
          ? const Value.absent()
          : Value(location),
    );
  }

  factory Store.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Store(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
      location: serializer.fromJson<String?>(json['location']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
      'location': serializer.toJson<String?>(location),
    };
  }

  Store copyWith(
          {int? id,
          Value<String?> name = const Value.absent(),
          Value<String?> location = const Value.absent()}) =>
      Store(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
        location: location.present ? location.value : this.location,
      );
  @override
  String toString() {
    return (StringBuffer('Store(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('location: $location')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, location);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          other.id == this.id &&
          other.name == this.name &&
          other.location == this.location);
}

class StoresCompanion extends UpdateCompanion<Store> {
  final Value<int> id;
  final Value<String?> name;
  final Value<String?> location;
  const StoresCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.location = const Value.absent(),
  });
  StoresCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.location = const Value.absent(),
  });
  static Insertable<Store> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? location,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (location != null) 'location': location,
    });
  }

  StoresCompanion copyWith(
      {Value<int>? id, Value<String?>? name, Value<String?>? location}) {
    return StoresCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      location: location ?? this.location,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoresCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('location: $location')
          ..write(')'))
        .toString();
  }
}

class $UserPreferencesTable extends UserPreferences
    with TableInfo<$UserPreferencesTable, UserPreference> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserPreferencesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES users(id) NOT NULL');
  static const VerificationMeta _preferenceTypeMeta =
      const VerificationMeta('preferenceType');
  @override
  late final GeneratedColumn<String> preferenceType = GeneratedColumn<String>(
      'preference_type', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _preferenceKeyMeta =
      const VerificationMeta('preferenceKey');
  @override
  late final GeneratedColumn<String> preferenceKey = GeneratedColumn<String>(
      'preference_key', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _preferenceValueMeta =
      const VerificationMeta('preferenceValue');
  @override
  late final GeneratedColumn<String> preferenceValue = GeneratedColumn<String>(
      'preference_value', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, preferenceType, preferenceKey, preferenceValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_preferences';
  @override
  VerificationContext validateIntegrity(Insertable<UserPreference> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('preference_type')) {
      context.handle(
          _preferenceTypeMeta,
          preferenceType.isAcceptableOrUnknown(
              data['preference_type']!, _preferenceTypeMeta));
    } else if (isInserting) {
      context.missing(_preferenceTypeMeta);
    }
    if (data.containsKey('preference_key')) {
      context.handle(
          _preferenceKeyMeta,
          preferenceKey.isAcceptableOrUnknown(
              data['preference_key']!, _preferenceKeyMeta));
    } else if (isInserting) {
      context.missing(_preferenceKeyMeta);
    }
    if (data.containsKey('preference_value')) {
      context.handle(
          _preferenceValueMeta,
          preferenceValue.isAcceptableOrUnknown(
              data['preference_value']!, _preferenceValueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserPreference map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserPreference(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      preferenceType: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}preference_type'])!,
      preferenceKey: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}preference_key'])!,
      preferenceValue: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}preference_value']),
    );
  }

  @override
  $UserPreferencesTable createAlias(String alias) {
    return $UserPreferencesTable(attachedDatabase, alias);
  }
}

class UserPreference extends DataClass implements Insertable<UserPreference> {
  final int id;
  final int userId;
  final String preferenceType;
  final String preferenceKey;
  final String? preferenceValue;
  const UserPreference(
      {required this.id,
      required this.userId,
      required this.preferenceType,
      required this.preferenceKey,
      this.preferenceValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['preference_type'] = Variable<String>(preferenceType);
    map['preference_key'] = Variable<String>(preferenceKey);
    if (!nullToAbsent || preferenceValue != null) {
      map['preference_value'] = Variable<String>(preferenceValue);
    }
    return map;
  }

  UserPreferencesCompanion toCompanion(bool nullToAbsent) {
    return UserPreferencesCompanion(
      id: Value(id),
      userId: Value(userId),
      preferenceType: Value(preferenceType),
      preferenceKey: Value(preferenceKey),
      preferenceValue: preferenceValue == null && nullToAbsent
          ? const Value.absent()
          : Value(preferenceValue),
    );
  }

  factory UserPreference.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserPreference(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      preferenceType: serializer.fromJson<String>(json['preferenceType']),
      preferenceKey: serializer.fromJson<String>(json['preferenceKey']),
      preferenceValue: serializer.fromJson<String?>(json['preferenceValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'preferenceType': serializer.toJson<String>(preferenceType),
      'preferenceKey': serializer.toJson<String>(preferenceKey),
      'preferenceValue': serializer.toJson<String?>(preferenceValue),
    };
  }

  UserPreference copyWith(
          {int? id,
          int? userId,
          String? preferenceType,
          String? preferenceKey,
          Value<String?> preferenceValue = const Value.absent()}) =>
      UserPreference(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        preferenceType: preferenceType ?? this.preferenceType,
        preferenceKey: preferenceKey ?? this.preferenceKey,
        preferenceValue: preferenceValue.present
            ? preferenceValue.value
            : this.preferenceValue,
      );
  @override
  String toString() {
    return (StringBuffer('UserPreference(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('preferenceType: $preferenceType, ')
          ..write('preferenceKey: $preferenceKey, ')
          ..write('preferenceValue: $preferenceValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, userId, preferenceType, preferenceKey, preferenceValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserPreference &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.preferenceType == this.preferenceType &&
          other.preferenceKey == this.preferenceKey &&
          other.preferenceValue == this.preferenceValue);
}

class UserPreferencesCompanion extends UpdateCompanion<UserPreference> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> preferenceType;
  final Value<String> preferenceKey;
  final Value<String?> preferenceValue;
  const UserPreferencesCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.preferenceType = const Value.absent(),
    this.preferenceKey = const Value.absent(),
    this.preferenceValue = const Value.absent(),
  });
  UserPreferencesCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String preferenceType,
    required String preferenceKey,
    this.preferenceValue = const Value.absent(),
  })  : userId = Value(userId),
        preferenceType = Value(preferenceType),
        preferenceKey = Value(preferenceKey);
  static Insertable<UserPreference> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? preferenceType,
    Expression<String>? preferenceKey,
    Expression<String>? preferenceValue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (preferenceType != null) 'preference_type': preferenceType,
      if (preferenceKey != null) 'preference_key': preferenceKey,
      if (preferenceValue != null) 'preference_value': preferenceValue,
    });
  }

  UserPreferencesCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? preferenceType,
      Value<String>? preferenceKey,
      Value<String?>? preferenceValue}) {
    return UserPreferencesCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      preferenceType: preferenceType ?? this.preferenceType,
      preferenceKey: preferenceKey ?? this.preferenceKey,
      preferenceValue: preferenceValue ?? this.preferenceValue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (preferenceType.present) {
      map['preference_type'] = Variable<String>(preferenceType.value);
    }
    if (preferenceKey.present) {
      map['preference_key'] = Variable<String>(preferenceKey.value);
    }
    if (preferenceValue.present) {
      map['preference_value'] = Variable<String>(preferenceValue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPreferencesCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('preferenceType: $preferenceType, ')
          ..write('preferenceKey: $preferenceKey, ')
          ..write('preferenceValue: $preferenceValue')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $CartItemsTable cartItems = $CartItemsTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $MarkedItemsTable markedItems = $MarkedItemsTable(this);
  late final $PantryItemsTable pantryItems = $PantryItemsTable(this);
  late final $ProdIngredientsTable prodIngredients =
      $ProdIngredientsTable(this);
  late final $RecipesTable recipes = $RecipesTable(this);
  late final $RecipeIngredientsTable recipeIngredients =
      $RecipeIngredientsTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ShopHistoriesTable shopHistories = $ShopHistoriesTable(this);
  late final $StoresTable stores = $StoresTable(this);
  late final $UserPreferencesTable userPreferences =
      $UserPreferencesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        cartItems,
        products,
        markedItems,
        pantryItems,
        prodIngredients,
        recipes,
        recipeIngredients,
        users,
        shopHistories,
        stores,
        userPreferences
      ];
}
