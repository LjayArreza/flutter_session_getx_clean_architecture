import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UBX Philippines',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      defaultTransition: Transition.fade,
      initialRoute: Routes.LANDING,
      getPages: AppPages.pages,
    );
  }
}
