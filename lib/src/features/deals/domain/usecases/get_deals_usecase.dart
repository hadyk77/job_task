import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/deal.dart';
import '../repositories/deal_repository.dart';

class GetDealsUsecase {
  final DealsRepository _repository;

  GetDealsUsecase(this._repository);

  Future<Either<Failure, List<Deal>>> call() {
    return _repository.get();
  }
}
