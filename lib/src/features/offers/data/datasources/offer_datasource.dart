import 'dart:developer';

import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/services/assets_reader_service.dart';
import '../models/offer_model.dart';

abstract class OfferDatasource {
  Future<List<OfferModel>> get();
}

class OfferDatasourceImpl extends OfferDatasource {
  final AssetsReaderService _service;

  OfferDatasourceImpl(this._service);

  @override
  Future<List<OfferModel>> get() async {
    try {
      final result = await _service.readJson("offer");
      return List<OfferModel>.from(
          result['offers'].map((map) => OfferModel.fromJson(map)));
    } on FormatException catch (e) {
      log(e.message);
      throw CustomFormatException();
    }
  }
}
