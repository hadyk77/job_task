import 'package:get/get.dart';
import '../../domain/entities/address.dart';
import '../../domain/usecases/get_addresses_usecase.dart';

class AddressController extends GetxController {
  final addresses = <Address>[].obs;
  Rx<Address?> currentAddress = Rx(null);
  final GetAddressesUsecase _getAddressesUsecase;

  AddressController(this._getAddressesUsecase);

  Future getAddress() async {
    final result = await _getAddressesUsecase();
    result.fold((l) {
      //Todo display error to user
    }, (addresses) {
      this.addresses.value = addresses;
      currentAddress.value = addresses.first;
    });
  }
}
