import 'package:flutter_test_project/pages/views/dashboard/dashboard.page.dart';
import 'package:flutter_test_project/pages/views/landing/landing.page.dart';
import 'package:flutter_test_project/pages/views/login/login.page.dart';
import 'package:flutter_test_project/pages/views/register/register.page.dart';
import 'package:flutter_test_project/pages/views/user_details/user_details.page.dart';
import 'package:flutter_test_project/presentation/bindings/dashboard/dashboard.binding.dart';
import 'package:flutter_test_project/presentation/bindings/landing/landing.binding.dart';
import 'package:flutter_test_project/presentation/bindings/login/login.binding.dart';
import 'package:flutter_test_project/presentation/bindings/register/register.binding.dart';
import 'package:get/route_manager.dart';

part 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.USER_DETAILS,
      page: () => UserDetailsPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.LANDING,
      page: () => LandingPage(),
      binding: LandingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterPage(),
      binding: RegisterBinding(),
    ),
  ];
}
