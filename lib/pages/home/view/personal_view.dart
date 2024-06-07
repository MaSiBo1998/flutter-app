import 'package:Pesoportuna/pages/home/controller/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/personal_controller.dart';

class PersonalPage extends GetView<PersonalController> {
  PersonalPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('个人中心'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('个人中心'),
        ));
  }
}
