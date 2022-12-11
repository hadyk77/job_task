import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/deal.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/colors/hex_colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../../../../public_controllers.dart';

class DealWidget extends StatelessWidget {
  const DealWidget({
    Key? key,
    required this.deal,
  }) : super(key: key);
  final Deal deal;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 95.r,
          height: 110.r,
          child: Stack(
            children: [
              Container(
                width: 90.r,
                height: 90.r,
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: HexColor(deal.color).withOpacity(0.22),
                ),
              ),
              InkWell(
                onTap: () {
                  dealsController.toggleFavourite(deal.id);
                },
                child: Container(
                  width: 24.r,
                  height: 24.r,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Icon(
                      deal.isLiked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline,
                      size: 15,
                      color: deal.isLiked
                          ? Colors.red
                          : AppColors.lightBorderColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deal.name,
              style: FontStyles.boldStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                "${deal.peices} Pieces",
                style: FontStyles.boldStyle.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Row(
                children: [
                  Assets.images.location.svg(
                    color: AppColors.darkGrey,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("${deal.minuteAway} Minutes Away"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      r"$"
                      "${deal.priceAfterDiscount}",
                      style: FontStyles.boldStyle.copyWith(
                        color: AppColors.orange,
                        fontSize: 13.sp,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      r"$"
                      "${deal.price}",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: AppColors.darkGrey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    cartController.addItem(deal);
                  },
                  color: AppColors.orange.withOpacity(0.40),
                  minWidth: 24.r,
                  height: 24.r,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
