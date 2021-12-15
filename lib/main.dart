import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noris_app/utils/get_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Noris App',
      getPages: getPages,
      initialRoute: "/login",
    ),
  );
}
