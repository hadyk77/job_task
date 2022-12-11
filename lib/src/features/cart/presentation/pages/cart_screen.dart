import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../../../home/presentation/widgets/current_address_widget.dart';
import '../../../home/presentation/widgets/user_profile_image_widget.dart';

import '../../../../public_controllers.dart';
import '../widgets/cart_item_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CurrentAddressWidget(),
                  UserProfileImageWidget(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  "Cart",
                  style: FontStyles.boldStyle.copyWith(
                    fontSize: 15.sp,
                  ),
                ),
              ),
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: cartController.items.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = cartController.items.elementAt(index);
                      return CartItemWidget(item: item);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
