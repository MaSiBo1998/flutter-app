import 'package:Pesoportuna/routers/pages.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:get/get.dart';
import '/routers/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, widget) => RefreshConfiguration(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppPages.INIT,
          getPages: AppPages.routers,
          builder: EasyLoading.init(),
          enableLog: true,
          navigatorObservers: [AppPages.observer],
        ),
      ),
    );
  }
}
