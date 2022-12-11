import 'package:flutter/material.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (v) {},
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Assets.images.search.svg(),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: "Search in thousands of products",
        hintStyle: FontStyles.hintStyle,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.orange,
          ),
        ),
        filled: true,
        fillColor: AppColors.textFieldColor,
      ),
    );
  }
}
