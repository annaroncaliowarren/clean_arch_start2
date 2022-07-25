import '../entities/product_entity.dart';

// Esse é o contrato do repositório, a implementação dele ficará dentro de repositories do infra
abstract class GetAllProductsRepository {
  // Ele será praticamente igual ao usecase, às vezes a diferença é que será um Future
  // Porém não podemos usar o usecase para usar na implementação do repositório, pois
  // estaria ferindo o princípio do SRP (Single Responsability Principle) do SOLID.
  List<ProductEntity> call();
}