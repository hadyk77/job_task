import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/services/assets_reader_service.dart';
import '../models/category_model.dart';

abstract class CategoryDatasource {
  Future<List<CategoryModel>> get();
}

class CategoryDatasourceImpl extends CategoryDatasource {
  final AssetsReaderService _service;

  CategoryDatasourceImpl(this._service);

  @override
  Future<List<CategoryModel>> get() async {
    try {
      final result = await _service.readJson("category");
      return List<CategoryModel>.from(
          result['categories'].map((map) => CategoryModel.fromJson(map)));
    } on FormatException {
      throw CustomFormatException();
    }
  }
}
