import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/services/assets_reader_service.dart';
import '../models/deal_model.dart';

abstract class DealDatasource {
  Future<List<DealModel>> get();
}

class DealDatasourceImpl extends DealDatasource {
  final AssetsReaderService _service;

  DealDatasourceImpl(this._service);

  @override
  Future<List<DealModel>> get() async {
    try {
      final result = await _service.readJson("deal");
      return List<DealModel>.from(
          result['deals'].map((map) => DealModel.fromJson(map)));
    } on FormatException {
      throw CustomFormatException();
    }
  }
}
