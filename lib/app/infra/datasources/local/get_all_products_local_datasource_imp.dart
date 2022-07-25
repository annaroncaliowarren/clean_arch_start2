import '../../../domain/entities/product_entity.dart';
import '../get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements GetAllProductsDatasource {
  @override
  List<ProductEntity> call() {
    return [
      ProductEntity(
        name: 'Computador',
        brand: 'HP',
        category: 'Eletrônicos',
        price: 5000,
        quantity: 3,
      ),
      ProductEntity(
        name: 'Bicicleta',
        brand: 'Mormaii',
        category: 'Automóveis',
        price: 300,
        quantity: 2,
      ),
      ProductEntity(
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'Eletrônicos',
        price: 400,
        quantity: 4,
      ),
    ];
  }
}
