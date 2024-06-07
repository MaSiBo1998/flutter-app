import 'package:Pesoportuna/pages/home/controller/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'controller/main_controller.dart';

class MainPage extends GetView<MainController> {
  MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.viewList[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
              BottomNavigationBarItem(label: '用户', icon: Icon(Icons.person)),
            ],
            currentIndex: controller.currentIndex.value,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
          )),
    );
  }
}
