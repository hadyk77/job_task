import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../public_controllers.dart';
import 'category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => Row(
          children: categoriesController.categories
              .map(
                (element) => CategoryWidget(
                  category: element,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
