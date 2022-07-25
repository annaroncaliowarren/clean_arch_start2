import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_products/get_all_products_usecase_imp.dart';
import '../app/domain/usecases/get_product_by_id/get_product_by_id_usecase_imp.dart';
import '../app/infra/datasources/local/get_all_products_local_datasource_imp.dart';
import '../app/infra/datasources/local/get_product_by_id_local_datasource_imp.dart';
import '../app/infra/repositories/get_all_products_repository_imp.dart';
import '../app/infra/repositories/get_product_by_id_repository_imp.dart';
import '../app/presenter/controllers/product_controller.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  // datasources
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );
  getIt.registerSingleton<GetProductByIdLocalDatasourceImp>(
    GetProductByIdLocalDatasourceImp(),
  );

  // repositories
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(
      getIt.get<GetAllProductsLocalDatasourceImp>(),
    ),
  );
  getIt.registerSingleton<GetProductByIdRepositoryImp>(
    GetProductByIdRepositoryImp(
      getIt.get<GetProductByIdLocalDatasourceImp>(),
    ),
  );

  // usecases
   getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(
      getIt.get<GetAllProductsRepositoryImp>(),
    ),
  );
   getIt.registerSingleton<GetProductByIdUsecaseImp>(
    GetProductByIdUsecaseImp(
      getIt.get<GetProductByIdRepositoryImp>(),
    ),
  );

  // controllers
  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt.get<GetAllProductsUsecaseImp>(),
      getIt.get<GetProductByIdUsecaseImp>(),
    ),
  );
}
