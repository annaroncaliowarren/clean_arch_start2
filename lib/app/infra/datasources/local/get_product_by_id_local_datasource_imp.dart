import '../../../domain/entities/product_entity.dart';
import '../get_product_by_id_datasource.dart';

class GetProductByIdLocalDatasourceImp implements GetProductByIdDatasource {
  @override
  ProductEntity? call(int id) {
    // jeito errado de fazer já que assim essa imp depende de outra
    // List<ProductEntity> products = GetAllProductsLocalDatasourceImp().call();

    List<ProductEntity> listProducts = [
      ProductEntity(
        id: 1,
        name: 'Computador',
        brand: 'HP',
        category: 'Eletrônicos',
        price: 5000,
        quantity: 3,
      ),
      ProductEntity(
        id: 2,
        name: 'Bicicleta',
        brand: 'Mormaii',
        category: 'Automóveis',
        price: 300,
        quantity: 2,
      ),
      ProductEntity(
        id: 3,
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'Eletrônicos',
        price: 400,
        quantity: 4,
      ),
    ];

    for (ProductEntity product in listProducts) {
      if (product.id == id) {
        return product;
      }
    }

    return null;
  }
}
