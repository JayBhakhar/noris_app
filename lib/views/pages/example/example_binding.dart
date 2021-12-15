import 'package:get/get.dart';
import 'package:noris_app/views/pages/example/example_controller.dart';

class ExampleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExampleController());
  }
}