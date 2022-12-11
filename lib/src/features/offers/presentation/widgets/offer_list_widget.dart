import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/offers/presentation/controllers/offers_controller.dart';

import 'offer_widget.dart';

class OfferListWidget extends StatelessWidget {
  const OfferListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final offerController = Get.find<OffersController>();
    return SizedBox(
        height: 220.h,
        child: Obx(
          () {
            return PageView.builder(
              itemCount: offerController.offers.length,
              itemBuilder: (context, index) {
                final offer = offerController.offers.elementAt(index);
                return OfferWidget(offer: offer);
              },
            );
          },
        ));
  }
}
