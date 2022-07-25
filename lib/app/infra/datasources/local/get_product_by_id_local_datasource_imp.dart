import '../../../domain/entities/product_entity.dart';
import '../get_product_by_id_datasource.dart';

class GetProductByIdLocalDatasourceImp implements GetProductByIdDatasource {
  @override
  ProductEntity call(int id) {
    if (id == 1) {
      return ProductEntity(
        id: 1,
        name: 'Computador',
        brand: 'HP',
        category: 'Eletrônicos',
        price: 5000,
        quantity: 3,
      );
    } else if (id == 2) {
      return ProductEntity(
        id: 2,
        name: 'Bicicleta',
        brand: 'Mormaii',
        category: 'Automóveis',
        price: 300,
        quantity: 2,
      );
    } else if (id == 3) {
      return ProductEntity(
        id: 3,
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'Eletrônicos',
        price: 400,
        quantity: 4,
      );
    } else {
      return ProductEntity(
        id: 0,
        name: '',
        brand: '',
        category: '',
        price: 0,
        quantity: 0,
      );
    }
  }
}
