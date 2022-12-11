import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/category.dart';

import '../../../../core/theme/colors/hex_colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 15),
      child: Column(
        children: [
          Container(
            width: 56.r,
            height: 56.r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: HexColor(category.color),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            category.name,
            style: FontStyles.categoryNameStyle,
          ),
        ],
      ),
    );
  }
}
