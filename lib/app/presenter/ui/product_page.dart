import 'package:flutter/material.dart';

import '../../domain/usecases/get_all_products_usecase_imp.dart';
import '../../infra/datasources/local/get_all_products_local_datasource_imp.dart';
import '../../infra/repositories/get_all_products_repository_imp.dart';
import '../controllers/product_controller.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  ProductController productController = ProductController(
    GetAllProductsUsecaseImp(
      GetAllProductsRepositoryImp(
        GetAllProductsLocalDatasourceImp(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: Center(
        child: Text(productController.products[0].name),
      ),
    );
  }
}
