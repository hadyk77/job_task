import 'package:get/get.dart';

import 'dependency_injection.dart';
import 'features/addresses/presentation/controllers/address_controller.dart';
import 'features/cart/presentation/controllers/cart_controller.dart';
import 'features/categories/presentation/controllers/categories_controller.dart';
import 'features/deals/presentation/controllers/deals_controller.dart';
import 'features/offers/presentation/controllers/offers_controller.dart';

final addressController = Get.put(AddressController(dpi()));
final categoriesController = Get.put(CategoriesController(dpi()));
final dealsController = Get.put(DealsController(dpi()));
final offerControlller = Get.put(OffersController(dpi()));
final cartController = Get.put(CartController());
