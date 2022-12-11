import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../../../../public_controllers.dart';

class CurrentAddressWidget extends StatelessWidget {
  const CurrentAddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
