import 'package:get/get.dart';
import '../../domain/entities/cart_item.dart';
import '../../../deals/domain/entities/deal.dart';

class CartController extends GetxController {
  final items = <CartItem>[].obs;
  double get total => items
      .map((element) => element.totalPrice)
      .fold(0, (previousValue, element) => previousValue + element);
  addItem(Deal deal) {
    final index = items.indexWhere((element) => element.deal.id == deal.id);
    if (index == -1) {
      items.add(CartItem(quantity: 1, deal: deal));
    }
  }

  increase(CartItem item) {
    final index = items.indexWhere((element) => element == item);
    if (index != -1) {
      items[index] = item.copyWith(
        quantity: item.quantity + 1,
      );
    }
  }

  decrease(CartItem item) {
    if (item.quantity > 1) {
      final index = items.indexWhere((element) => element == item);
      if (index != -1) {
        items[index] = item.copyWith(
          quantity: item.quantity - 1,
        );
      }
    } else {
      items.remove(item);
    }
  }
}
