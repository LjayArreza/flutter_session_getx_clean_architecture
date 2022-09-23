import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:flutter_test_project/presentation/controllers/login/login.controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController(UserRepository()));
  }
}
