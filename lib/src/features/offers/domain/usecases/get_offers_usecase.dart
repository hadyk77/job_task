import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/offer.dart';
import '../repositories/offer_repository.dart';

class GetOffersUsecase {
  final OfferRepository _repository;

  GetOffersUsecase(this._repository);

  Future<Either<Failure, List<Offer>>> call() {
    return _repository.get();
  }
}
