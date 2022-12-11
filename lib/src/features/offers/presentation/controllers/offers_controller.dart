import 'package:get/get.dart';
import '../../domain/entities/offer.dart';
import '../../domain/usecases/get_offers_usecase.dart';

class OffersController extends GetxController {
  final GetOffersUsecase _getOffersUsecase;

  OffersController(this._getOffersUsecase);
  final offers = <Offer>[].obs;
  Future get() async {
    final result = await _getOffersUsecase();

    result.fold((l) => null, (r) {
      offers.value = r;
    });
  }


  
}
