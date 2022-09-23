import 'package:flutter_test_project/domain/repositories/user.repository.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  UserRepository userRepo;
  LandingController(this.userRepo);
}
