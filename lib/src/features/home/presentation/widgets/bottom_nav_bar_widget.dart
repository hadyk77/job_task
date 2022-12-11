import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../core/theme/colors/colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.childs,
    required RxInt currentIndex,
    required this.icons,
    required this.titles,
  })  : _currentIndex = currentIndex,
        super(key: key);

  final List<Widget> childs;
  final RxInt _currentIndex;
  final List<String> icons;
  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.bottomNavColor,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              childs.length,
              (index) => InkWell(
                onTap: () {
                  _currentIndex.value = index;
                },
                child: Obx(
                  () => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: SvgPicture.asset(
                          icons.elementAt(index),
                          color: index == _currentIndex.value
                              ? AppColors.orange
                              : Colors.grey,
                        ),
                      ),
                      Text(
                        titles[index],
                        style: FontStyles.bottomNavLabel.copyWith(
                          color: index == _currentIndex.value
                              ? AppColors.orange
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
