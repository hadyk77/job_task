import 'package:dartz/dartz.dart';
import '../entities/address.dart';

import '../../../../core/exceptions/failure.dart';

abstract class AddressRepository {
  Future<Either<Failure, List<Address>>> get();
}
