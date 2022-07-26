import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';
import 'product_by_id_page.dart';

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
        actions: [
          IconButton(
            padding: const EdgeInsets.only(
              right: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductById(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_circle_right_outlined,
              size: 35,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              productController.getProductById(productController.products[index].id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductById(),
                ),
              );
            },
            child: Card(
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
            ),
          );
        },
      ),
    );
  }
}
