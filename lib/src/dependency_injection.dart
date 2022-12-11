import 'package:get_it/get_it.dart';
import 'core/services/assets_reader_service.dart';
import 'features/addresses/data/datasources/address_datasource.dart';
import 'features/addresses/data/repositories/address_repository_impl.dart';
import 'features/addresses/domain/repositories/address_repository.dart';
import 'features/addresses/domain/usecases/get_addresses_usecase.dart';
import 'features/categories/data/datasources/category_datasource.dart';
import 'features/categories/data/repositories/category_repository_impl.dart';
import 'features/categories/domain/repositories/category_repository.dart';
import 'features/categories/domain/usecases/get_categories_usecase.dart';
import 'features/deals/data/datasources/deal_datasource.dart';
import 'features/deals/data/repositories/deal_repository_impl.dart';
import 'features/deals/domain/repositories/deal_repository.dart';
import 'features/deals/domain/usecases/get_deals_usecase.dart';
import 'features/offers/data/datasources/offer_datasource.dart';
import 'features/offers/data/repositories/offer_repository_impl.dart';
import 'features/offers/domain/repositories/offer_repository.dart';
import 'features/offers/domain/usecases/get_offers_usecase.dart';

final dpi = GetIt.instance;

setUp() {
  //! services

  dpi.registerLazySingleton(() => AssetsReaderService());

  //! addresses

  dpi.registerFactory<AddressDatasource>(() => AddressDatasourceImpl(dpi()));
  dpi.registerFactory<AddressRepository>(() => AddressRepositoryImpl(dpi()));
  dpi.registerFactory(() => GetAddressesUsecase(dpi()));

  //! categories

  dpi.registerFactory<CategoryDatasource>(() => CategoryDatasourceImpl(dpi()));
  dpi.registerFactory<CategoryRepository>(() => CategoryRepositoryImpl(dpi()));
  dpi.registerFactory(() => GetCategoriesUsecase(dpi()));

  //! deals

  dpi.registerFactory<DealDatasource>(() => DealDatasourceImpl(dpi()));
  dpi.registerFactory<DealsRepository>(() => DealRepositoryImpl(dpi()));
  dpi.registerFactory(() => GetDealsUsecase(dpi()));

  //! offers

  dpi.registerFactory<OfferDatasource>(() => OfferDatasourceImpl(dpi()));
  dpi.registerFactory<OfferRepository>(() => OfferRepositoryImpl(dpi()));
  dpi.registerFactory(() => GetOffersUsecase(dpi()));
}
