import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_test_project/app/core/routes/app_pages.dart';
import 'package:flutter_test_project/app/services/shared_storage.dart';
import 'package:flutter_test_project/data/model/user_list_response.model.dart';
import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardController extends GetxController {
  RxBool isLoading = false.obs;
  RxString token = ''.obs;

  late final UserListResponse user;

  UserRepository userRepo;
  DashboardController(this.userRepo);

  var userList = [];
  var emailString = [''].obs;
  var firstnameString = [''].obs;
  var lastNameString = [''].obs;
  var avatarString = [''].obs;

  String firstName = '';
  String lastName = '';
  String avatar = '';

  @override
  void onInit() {
    _asyncMethod();
    super.onInit();
  }

  _asyncMethod() async {
    fetchUsers();
    getToken();
  }

  Future<void> fetchUsers() async {
    isLoading(true);
    var response = await userRepo.getUserList();

    if (response is UserListResponse) {
      isLoading(false);
      userList = response.data;
      emailString.value = [];
      firstnameString.value = [];
      lastNameString.value = [];
      avatarString.value = [];
      for (var data in userList) {
        emailString.value.add(data.email);
        firstnameString.value.add(data.firstName);
        lastNameString.value.add(data.lastName);
        avatarString.value.add(data.avatar);
      }
    } else {
      isLoading(false);
      Fluttertoast.showToast(
          msg: 'Error', toastLength: Toast.LENGTH_SHORT, timeInSecForIosWeb: 3);
    }
  }

  void logout() {
    Get.offAllNamed(Routes.LOGIN);
    SharedStorage().clearStorage();
  }

  Future<void> getToken() async {
    var _token = await SharedStorage().getAccessToken();
    token.value = _token;
  }
}
