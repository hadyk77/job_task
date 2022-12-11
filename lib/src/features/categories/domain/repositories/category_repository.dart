import 'package:dartz/dartz.dart';
import '../../../../core/exceptions/failure.dart';
import '../entities/category.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> get();
}
