import 'package:dartz/dartz.dart';
import '../repositories/category_repository.dart';

import '../../../../core/exceptions/failure.dart';
import '../entities/category.dart';

class GetCategoriesUsecase {
  final CategoryRepository _repository;

  GetCategoriesUsecase(this._repository);

  Future<Either<Failure, List<Category>>> call() {
    return _repository.get();
  }
}
