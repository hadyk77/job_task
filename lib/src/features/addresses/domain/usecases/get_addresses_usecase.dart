import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/address.dart';
import '../repositories/address_repository.dart';

class GetAddressesUsecase {
  final AddressRepository _repository;

  GetAddressesUsecase(this._repository);

  Future<Either<Failure, List<Address>>> call() {
    return _repository.get();
  }
}
