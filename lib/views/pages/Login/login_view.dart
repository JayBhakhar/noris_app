import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noris_app/views/pages/Login/login_controller.dart';
import 'package:noris_app/views/widgets/custom_textFormField_widgets.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 1, left: 1, right: 1),
        child: Form(
          key: controller.loginFormKey,
          child: ListView(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Вход',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 120,
                ),
              ),
              customTextFormFieldForEmail(
                controller: controller.emailController,
              ),
              customTextFormFieldForPassword(
                controller: controller.passwordController,
              ),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.green)),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Text(
                      'Вход',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {
                      controller.loginRequest();
                      // login function
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
