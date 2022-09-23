import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/data/model/register_response.model.dart';
import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final registerFormKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;

  RxBool isObscure = true.obs;
  RxBool isButtonActive = false.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;

  UserRepository userRepo;
  RegisterController(this.userRepo);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isBtnEnable() {
    var isEmailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailController.text);
    var isPasswordValid = passwordController.text.isNotEmpty;

    return (isEmailValid && isPasswordValid);
  }

  void submit() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        _validate()) {
      isLoading(true);
      var response = await userRepo.register(
          email: emailController.text, password: passwordController.text);

      if (response is RegisterResponseModel) {
        isLoading(false);
        Get.offAllNamed(Routes.LOGIN);
      } else {
        isLoading(false);
        Fluttertoast.showToast(
          msg: 'Error',
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 3,
        );
      }
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  bool _validate() {
    final form = registerFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
