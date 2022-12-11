import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../domain/entities/category.dart';
import '../../domain/usecases/get_categories_usecase.dart';

class CategoriesController extends GetxController {
  RxList<Category> categories = <Category>[].obs;

  final GetCategoriesUsecase _getCategoriesUsecase;

  CategoriesController(this._getCategoriesUsecase);

  Future get() async {
    final result = await _getCategoriesUsecase();
    result.fold((l) {
      //todo show error
    }, (r) {
      categories.value = r;
    });
  }
}
