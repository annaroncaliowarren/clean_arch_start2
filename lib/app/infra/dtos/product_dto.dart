import 'dart:convert';

import '../../domain/entities/product_entity.dart';

// DTO é o DATA TRANSFORM OBJECT
// Ele transformará nossos dados json em objeto dart
// Os nomes dos atributos na DTO tem que ter reflexo com os campos da API
class ProductDto extends ProductEntity {
  String productName;
  String productBrand;
  String productCategory;
  double productPrice;
  int productQuantity;

  ProductDto({
    required this.productName,
    required this.productBrand,
    required this.productCategory,
    required this.productPrice,
    required this.productQuantity,
  }) : super(
          name: productName,
          brand: productBrand,
          category: productCategory,
          price: productPrice,
          quantity: productQuantity,
        );

  // Aqui na DTO poderá ter validações de dados, conversão, tratamentos.
  // porém tratamentos de erros com o Try Catch ficará no datasource

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'productName': productName});
    result.addAll({'productBrand': productBrand});
    result.addAll({'productCategory': productCategory});
    result.addAll({'productPrice': productPrice});
    result.addAll({'productQuantity': productQuantity});
  
    return result;
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      productName: map['productName'] ?? '',
      productBrand: map['productBrand'] ?? '',
      productCategory: map['productCategory'] ?? '',
      productPrice: map['productPrice']?.toDouble() ?? 0.0,
      productQuantity: map['productQuantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) => ProductDto.fromMap(json.decode(source));
}
