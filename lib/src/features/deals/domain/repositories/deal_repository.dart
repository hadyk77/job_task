import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/deal.dart';

abstract class DealsRepository {
  Future<Either<Failure, List<Deal>>> get();
}
