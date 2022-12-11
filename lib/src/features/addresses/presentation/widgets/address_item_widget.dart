import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/address.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';

class AddressItemWidget extends StatelessWidget {
  const AddressItemWidget({
    Key? key,
    required this.address,
  }) : super(key: key);
  final Address address;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 15),
      width: 175.w,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: AppColors.lightBorderColor,
          )),
      child: Row(
        children: [
          Container(
            width: 39.r,
            height: 39.r,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.addressColor,
                border: Border.all(
                  color: AppColors.borderColor,
                )),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    address.name,
                    style: FontStyles.addressStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.hintTextColor,
                    ),
                  ),
                ),
                Text(
                  address.description,
                  style: const TextStyle(
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
