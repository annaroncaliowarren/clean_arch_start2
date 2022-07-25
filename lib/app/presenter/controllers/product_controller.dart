import 'package:clean_arch_start2/app/domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products/get_all_products_usecase.dart';

class ProductController {
  final GetAllProductsUsecase _getAllProductsUsecase;
  final GetProductByIdUsecase _getProductByIdUsecase;
  ProductController(
    this._getAllProductsUsecase,
    this._getProductByIdUsecase,
  ) {
    // Aqui no construtor fazemos a chamada do método getAllProducts
    // para trazer todos os produtos
    getAllProducts();
    //getProductById();
  }

  List<ProductEntity> products = [];

  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }

  void getProductById(int id) {
    
    // for (int i = 0; i < products.length; i++) {
    //   if (id == products[i].id) {
    //   return ProductEntity(
    //     id: products[i].id,
    //     name: products[i].name,
    //     brand: products[i].brand,
    //     category: products[i].category,
    //     price: products[i].price,
    //     quantity: products[i].quantity,
    //   );
    // }
    
    }
  }

