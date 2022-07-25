import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ProductById extends StatelessWidget {
  ProductById({Key? key}) : super(key: key);

  ProductController productController = getIt.get<ProductController>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(productController.products[0].name),
    );
  }
}