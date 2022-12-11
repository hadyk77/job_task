import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../../domain/entities/offer.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 30),
      width: 375.w,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.orange.withOpacity(0.22),
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mega",
                style: FontStyles.addressStyle.copyWith(
                  color: AppColors.orange,
                ),
              ),
              Text(
                "WHOPPER",
                style: FontStyles.boldStyle.copyWith(
                  fontSize: 31.sp,
                  color: AppColors.blueColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      r"$"
                      "${offer.priceAfterDiscount}",
                      style: FontStyles.boldStyle.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.orange,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      r"$"
                      "${offer.priceAfterDiscount}",
                      style: FontStyles.boldStyle.copyWith(
                        fontSize: 18.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Available Until ${DateFormat("dd MMMM yyyy").format(offer.date)}",
                  style: FontStyles.boldStyle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
