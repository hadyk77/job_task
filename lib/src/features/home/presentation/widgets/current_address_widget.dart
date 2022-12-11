import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/addresses/presentation/controllers/address_controller.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';

class CurrentAddressWidget extends StatelessWidget {
  const CurrentAddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressController = Get.find<AddressController>();
    return Stack(
      fit: StackFit.loose,
      children: [
        Assets.images.addressShape.svg(),
        Positioned.fill(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.location.svg(),
              const SizedBox(
                width: 5,
              ),
              Obx(
                () => Text(
                  addressController.currentAddress.value?.description
                          .split(".")
                          .first ??
                      "",
                  style: FontStyles.addressStyle,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
