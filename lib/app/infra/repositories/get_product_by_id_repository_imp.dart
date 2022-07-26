
import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_product_by_id_repository.dart';
import '../datasources/get_product_by_id_datasource.dart';

class GetProductByIdRepositoryImp implements GetProductByIdRepository {
  final GetProductByIdDatasource _getProductByIdDatasource;
  GetProductByIdRepositoryImp(this._getProductByIdDatasource);

  @override
  ProductEntity? call(int id) {
    return _getProductByIdDatasource.call(id);
  }
}