import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/exceptions/failure.dart';
import '../datasources/category_datasource.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/category_repository.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final CategoryDatasource _datasource;

  CategoryRepositoryImpl(this._datasource);

  @override
  Future<Either<Failure, List<Category>>> get() async {
    try {
      final result = await _datasource.get();
      return right(result);
    } on CustomFormatException catch (e) {
      return left(FormatFailure(message: e.message));
    }
  }
}
