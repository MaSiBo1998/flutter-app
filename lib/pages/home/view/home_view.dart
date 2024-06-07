import 'package:Pesoportuna/pages/home/controller/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          Obx(() => Text('Age:${controller.age.value}')),
          20.h.verticalSpace,
          ElevatedButton(
            onPressed: controller.addAge,
            child: const Text('age+1'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(300, 50)),
            ),
          ),
          ElevatedButton(
            onPressed: controller.addAge,
            child: const Text('Home'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(300, 50)),
            ),
          ),
          ElevatedButton(
              onPressed: controller.goBackSplash, child: Text('返回闪屏页'))
        ],
      )),
    );
  }
}
