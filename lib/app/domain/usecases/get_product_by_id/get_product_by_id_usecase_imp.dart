
import '../../entities/product_entity.dart';
import '../../repositories/get_product_by_id_repository.dart';
import 'get_product_by_id_usecase.dart';

class GetProductByIdUsecaseImp implements GetProductByIdUsecase {
  final GetProductByIdRepository _getProductByIdRepository;
  GetProductByIdUsecaseImp(this._getProductByIdRepository);

  @override
  ProductEntity call(int id) {
    return _getProductByIdRepository.call(id);
  }  
}