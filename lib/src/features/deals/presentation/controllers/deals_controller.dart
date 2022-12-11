import 'package:get/get.dart';
import '../../data/models/deal_model.dart';
import '../../domain/entities/deal.dart';
import '../../domain/usecases/get_deals_usecase.dart';

class DealsController extends GetxController {
  final GetDealsUsecase _getDealsUsecase;

  DealsController(this._getDealsUsecase);
  final deals = <Deal>[].obs;
  Future get() async {
    final result = await _getDealsUsecase();
    result.fold((l) => null, (r) {
      deals.value = r;
    });
  }

  toggleFavourite(int id) {
    final index = deals.indexWhere((element) => element.id == id);
    deals[index] =
        (deals[index].copyWith(isLiked: !deals[index].isLiked) as DealModel);
  }
}
