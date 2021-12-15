import 'package:get/get.dart';
import 'package:noris_app/views/pages/Login/login_binding.dart';
import 'package:noris_app/views/pages/Login/login_view.dart';

List<GetPage> getPages = [
  GetPage(name: "/login", page: () => LoginView(), binding: LoginBinding())
];
