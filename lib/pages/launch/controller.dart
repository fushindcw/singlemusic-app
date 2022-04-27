import 'dart:async';

import 'package:get/get.dart';
import 'package:singlemusic/routes/app_routes.dart';

import 'index.dart';

class LaunchController extends GetxController {
  LaunchController();

  String lauchImageUrl =
      "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1093264713,2279663012&fm=26&gp=0.jpg";
  RxInt time = 10.obs;
  RxBool canSkip = false.obs;

  final state = LaunchState();

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
    Timer.periodic(
        const Duration(
          milliseconds: 1000,
        ),
        (timer) => {
              if (time > 0)
                {
                  time--,
                }
              else if (time.value == 5)
                {
                  canSkip.value = true,
                  canSkip.refresh(),
                }
              else
                {
                  timer.cancel(),
                  Get.toNamed(AppRoutes.home),
                }
            });
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
