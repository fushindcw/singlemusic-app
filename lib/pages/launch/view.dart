import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class LaunchPage extends GetView<LaunchController> {
  const LaunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LaunchController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              SafeArea(
                child:
                    Image.network(controller.lauchImageUrl, fit: BoxFit.fill),
              ),
              Positioned(
                top: 50,
                right: 30,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black12,
                  ),
                  child: Obx(
                    () => RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: controller.time.toString(),
                          ),
                          TextSpan(text: controller.canSkip.toString())
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          // body: SafeArea(
          //   child: Image.network(controller.lauchImageUrl, fit: BoxFit.fill),
          // ),
        );
      },
    );
  }
}
