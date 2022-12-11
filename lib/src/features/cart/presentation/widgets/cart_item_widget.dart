import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/cart/presentation/controllers/cart_controller.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/colors/hex_colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../../domain/entities/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              color: HexColor(item.deal.color),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.deal.name,
                  style: FontStyles.boldStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "${item.deal.peices} Pieces",
                    style: FontStyles.bottomNavLabel.copyWith(
                      fontSize: 9.sp,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ),
                Text(
                  r"$" "${item.totalPrice}",
                  style: FontStyles.boldStyle.copyWith(
                    color: AppColors.orange,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {
                  cartController.decrease(item);
                },
                color: AppColors.lightBlue,
                elevation: 0,
                padding: EdgeInsets.zero,
                minWidth: 33.r,
                height: 33.r,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    Icons.remove,
                    color: HexColor("#47B6DA"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "${item.quantity}",
                  style: FontStyles.boldStyle.copyWith(
                    fontSize: 19.sp,
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  cartController.increase(item);
                },
                color: AppColors.lightBlue,
                elevation: 0,
                padding: EdgeInsets.zero,
                minWidth: 33.r,
                height: 33.r,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: HexColor("#47B6DA"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
