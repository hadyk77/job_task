import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/exceptions/failure.dart';
import '../datasources/deal_datasource.dart';
import '../../domain/entities/deal.dart';
import '../../domain/repositories/deal_repository.dart';

class DealRepositoryImpl extends DealsRepository {
  final DealDatasource _datasource;

  DealRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Deal>>> get() async {
    try {
      final result = await _datasource.get();
      return right(result);
    } on CustomFormatException catch (e) {
      return left(FormatFailure(message: e.message));
    }
  }
}
