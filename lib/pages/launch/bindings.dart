import 'package:get/get.dart';

import 'controller.dart';

class LaunchBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaunchController>(() => LaunchController());
  }
}
