import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {  
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  void loginRequest() {}
}