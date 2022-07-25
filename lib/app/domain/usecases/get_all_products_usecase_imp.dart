import '../entities/product_entity.dart';
import '../repositories/get_all_products_repository.dart';
import 'get_all_products_usecase.dart';

// Contém as regras de aplicação 
// Essa é a implementação do caso de uso do GetAllProducts
class GetAllProductsUsecaseImp implements GetAllProductsUsecase {

  // Precisamos de um contrato no repositório para fazer a chamado do método
  // Assim, dependeremos da ABSTRAÇÃO e não da IMPLEMENTAÇÃO
  final GetAllProductsRepository _getAllProductsRepository;
  GetAllProductsUsecaseImp(this._getAllProductsRepository);

  @override
  List<ProductEntity> call() {
    List<ProductEntity> listCorrect = [];
    List<ProductEntity> listProducts = _getAllProductsRepository.call();
    
    for (ProductEntity product in listProducts) {
      if (product.checkAvailability()) {
        listCorrect.add(product);
      }
    }

    return listCorrect;
  }
}