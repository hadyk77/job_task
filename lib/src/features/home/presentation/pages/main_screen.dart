import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/cart/presentation/controllers/cart_controller.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/colors/colors.dart';
import '../../../cart/presentation/pages/cart_screen.dart';
import '../widgets/bottom_nav_bar_widget.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  static String name = "/";
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Widget> childs = [
    const HomeScreen(),
    const SizedBox(),
    const SizedBox(),
    const CartScreen(),
  ];
  final List<String> icons = [
    Assets.images.grocery.path,
    Assets.images.news.path,
    Assets.images.favourites.path,
    Assets.images.wallet.path,
  ];
  final List<String> titles = [
    "Grocery",
    "News",
    "Favourites",
    "Cart",
  ];

  final _currentIndex = 0.obs;

  @override
  void initState() {
    Get.put<CartController>(CartController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.orange,
        child: Stack(
          children: [
            Obx(
              () => Text(
                r"$" "${cartController.total.toStringAsFixed(1)}",
                style: TextStyle(
                  fontSize: 7.sp,
                ),
              ),
            ),
            Assets.images.cart.svg(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
          childs: childs,
          currentIndex: _currentIndex,
          icons: icons,
          titles: titles),
      body: Obx(
        () => IndexedStack(
          index: _currentIndex.value,
          children: childs,
        ),
      ),
    );
  }
}
