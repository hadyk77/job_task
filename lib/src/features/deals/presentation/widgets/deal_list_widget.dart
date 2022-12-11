import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../public_controllers.dart';
import 'deal_widget.dart';

class DealListWidget extends StatelessWidget {
  const DealListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
