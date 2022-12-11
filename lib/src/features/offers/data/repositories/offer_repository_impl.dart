import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/exceptions/failure.dart';
import '../datasources/offer_datasource.dart';
import '../../domain/entities/offer.dart';
import '../../domain/repositories/offer_repository.dart';

class OfferRepositoryImpl extends OfferRepository {
  final OfferDatasource _datasource;

  OfferRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Offer>>> get() async {
    try {
      final result = await _datasource.get();
      return right(result);
    } on CustomFormatException catch (e) {
      return left(FormatFailure(message: e.message));
    }
  }
}
