import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/colors/hex_colors.dart';
import '../../../../core/theme/fonts_styles/font_style.dart';
import '../widgets/current_address_widget.dart';

import '../../../../public_controllers.dart';
import '../../../addresses/presentation/widgets/address_list_widget.dart';
import '../../../categories/presentation/widgets/category_list_widget.dart';
import '../../../core/presentation/widgets/text_field_widget.dart';
import '../../../deals/presentation/widgets/deal_list_widget.dart';
import '../../../offers/presentation/widgets/offer_list_widget.dart';
import '../widgets/user_profile_image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    addressController.getAddress();
    categoriesController.get();
    dealsController.get();
    offerControlller.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CurrentAddressWidget(),
                    UserProfileImageWidget()
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: TextfieldWidget(),
                ),
                const AddressListWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore By Category",
                        style: FontStyles.boldStyle,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All (36)",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: HexColor("#929294"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const CategoryListWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Deals of the day",
                      style: FontStyles.boldStyle,
                    ),
                  ),
                ),
                const DealListWidget(),
                const OfferListWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
