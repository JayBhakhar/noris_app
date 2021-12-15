import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noris_app/utils/get_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Noris App',  
      getPages: getPages,
      initialRoute: "/login",
    );
  }
}
