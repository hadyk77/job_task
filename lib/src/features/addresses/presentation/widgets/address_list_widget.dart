import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_task/src/features/addresses/presentation/controllers/address_controller.dart';

import 'address_item_widget.dart';

class AddressListWidget extends StatelessWidget {
  const AddressListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final addressController = Get.find<AddressController>();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(
        () => Row(
          children: addressController.addresses.map((address) {
            return AddressItemWidget(
              address: address,
            );
          }).toList(),
        ),
      ),
    );
  }
}
