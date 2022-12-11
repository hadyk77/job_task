import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/exceptions/failure.dart';
import '../datasources/address_datasource.dart';
import '../../domain/entities/address.dart';
import '../../domain/repositories/address_repository.dart';

class AddressRepositoryImpl extends AddressRepository {
  final AddressDatasource _datasource;

  AddressRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Address>>> get() async {
    try {
      final result = await _datasource.get();
      return right(result);
    } on CustomFormatException catch (e) {
      return left(FormatFailure(message: e.message));
    }
  }
}
