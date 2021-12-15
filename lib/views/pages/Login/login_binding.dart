import 'package:get/get.dart';
import 'package:noris_app/views/pages/Login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}