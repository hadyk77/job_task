import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/deals/presentation/controllers/deals_controller.dart';

import 'deal_widget.dart';

class DealListWidget extends StatelessWidget {
  const DealListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dealsController = Get.find<DealsController>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => Row(
          children: dealsController.deals.map((element) {
            return Padding(
              padding: const EdgeInsetsDirectional.only(end: 15),
              child: DealWidget(
                deal: element,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
