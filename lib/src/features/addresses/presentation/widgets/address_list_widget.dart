import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'address_item_widget.dart';

import '../../../../public_controllers.dart';

class AddressListWidget extends StatelessWidget {
  const AddressListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
