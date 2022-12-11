import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/categories/presentation/controllers/categories_controller.dart';

import 'category_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesController = Get.find<CategoriesController>();
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
