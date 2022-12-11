import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/services/assets_reader_service.dart';
import '../models/address_model.dart';

abstract class AddressDatasource {
  Future<List<AddressModel>> get();
}

class AddressDatasourceImpl extends AddressDatasource {
  final AssetsReaderService _service;

  AddressDatasourceImpl(this._service);
  @override
  Future<List<AddressModel>> get() async {
    try {
      final response = await _service.readJson("address");
      return List<AddressModel>.from(
          response['addresses'].map((map) => AddressModel.fromJson(map)));
    } on FormatException {
      throw CustomFormatException();
    }
  }
}
