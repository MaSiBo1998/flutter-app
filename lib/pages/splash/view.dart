import 'package:Pesoportuna/pages/splash/controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../../generated/assets.dart';

class SplashPage extends GetView<SplashController> {
  SplashPage({Key? key}) : super(key: key);
  _buildView() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // AdImageWidget(),
        Image.asset(Assets.imagesSplashBg,
            width: 375.w, height: 643.h, fit: BoxFit.fitWidth),
        ElevatedButton(
          onPressed: () {
            // 确保调用方法时 controller 不为 null
            if (controller != null) {
              controller.toHome();
            } else {
              print('Controller is null');
            }
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(300, 50)),
          ),
          child: const Text('跳转首页'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      id: 'splash',
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Text('闪屏页'),
  //         ElevatedButton(
  //           onPressed: () {
  //             // 确保调用方法时 controller 不为 null
  //             if (controller != null) {
  //               controller.toHome();
  //             } else {
  //               print('Controller is null');
  //             }
  //           },
  //           child: const Text('跳转首页'),
  //           style: ButtonStyle(
  //             minimumSize: MaterialStateProperty.all(const Size(300, 50)),
  //           ),
  //         ),
  //       ],
  //     ),
  //   ));
  // }
}
