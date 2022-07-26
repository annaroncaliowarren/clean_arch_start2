import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products/get_all_products_usecase.dart';
import '../../domain/usecases/get_product_by_id/get_product_by_id_usecase.dart';

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
  }

  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }

  late ProductEntity productEntity;
  void getProductById(int id) {
    productEntity = _getProductByIdUsecase.call(id)!;
  }
}
