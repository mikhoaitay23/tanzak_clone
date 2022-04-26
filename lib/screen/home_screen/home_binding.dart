import 'package:get/get.dart';
import 'package:tanzak_clone/screen/home_screen/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
