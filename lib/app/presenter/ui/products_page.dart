import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  ProductController productController = getIt.get<ProductController>();

  // get it substituindo:
  // ProductController(
  //   GetAllProductsUsecaseImp(
  //     GetAllProductsRepositoryImp(
  //       GetAllProductsLocalDatasourceImp(),
  //     ),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Text(
                              productController.products[index].name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            productController.products[index].brand,
                          ),
                        ],
                      ),
                      Text(productController.products[index].category),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        productController.products[index].price.toString(),
                      ),
                      Text(
                        productController.products[index].quantity.toString(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
