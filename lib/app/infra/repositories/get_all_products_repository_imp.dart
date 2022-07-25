import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_all_products_repository.dart';
import '../datasources/get_all_products_datasource.dart';

// Aqui é a implementação do repositório do domain
// porém não é ele que fará as requisições na API (Firebase, local...), essa responsabilidade é dos datasources
// A implementação do repositório servirá como um ponte
class GetAllProductsRepositoryImp implements GetAllProductsRepository {
  // Precisará de um contrato do datasource de trazer todos os produtos, e esse contrato nós pediremos no construtor
  // Seguindo o princípio DIP (Dependency Inversion Principle) do SOLID
  final GetAllProductsDatasource _getAllProductsDatasource;
  GetAllProductsRepositoryImp(this._getAllProductsDatasource);

  @override
  List<ProductEntity> call() {
    return _getAllProductsDatasource.call();
  }
}
