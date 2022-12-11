import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../public_controllers.dart';
import 'offer_widget.dart';

class OfferListWidget extends StatelessWidget {
  const OfferListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 220.h,
        child: Obx(
          () {
            return PageView.builder(
              itemCount: offerControlller.offers.length,
              itemBuilder: (context, index) {
                final offer = offerControlller.offers.elementAt(index);
                return OfferWidget(offer: offer);
              },
            );
          },
        ));
  }
}
