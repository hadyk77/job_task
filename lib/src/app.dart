import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 791),
      builder: (context, child) => GetMaterialApp(
        getPages: Routes.pages,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Poppins"),
      ),
    );
  }
}
