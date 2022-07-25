import '../../entities/product_entity.dart';

// Isso aqui é o contrato do nosso caso de uso para trazer todos os produtos.
abstract class GetAllProductsUsecase {
  List<ProductEntity> call();
  // call também é chamada de funções callable, basicamente ela é chamada quando instaciamos a classe.
}
