import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/offer.dart';

abstract class OfferRepository {
  Future<Either<Failure, List<Offer>>> get();



  
}
