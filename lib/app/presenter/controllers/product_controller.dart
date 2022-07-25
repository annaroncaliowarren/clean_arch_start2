import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductController {
  final GetAllProductsUsecase _getAllProductsUsecase;
  ProductController(this._getAllProductsUsecase) {
    // Aqui no construtor fazemos a chamada do método getAllProducts
    // para trazer todos os produtos
    getAllProducts();
  }

  List<ProductEntity> products = [];

  void getAllProducts() {
    products =  _getAllProductsUsecase.call();
  }
}