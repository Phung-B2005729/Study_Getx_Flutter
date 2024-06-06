import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxtest/Get_Localization/localizations/app_localization.dart';
import 'package:getxtest/Manage_State/Binding/All_Binding.dart';
import 'package:getxtest/Widget/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  //AllBinDing().dependencies();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // gọi sử dụng class Counter đã khai báo ở counter_controller.dart
  MyApp({super.key});
  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // localization
        locale: (box.read('lang') == null)
            ? const Locale('en')
            : Locale(box.read('lang')), // en: English, vn: VietNam
        // khai báo file dịch ngôn ngữ
        translations: AppLocalization(),
        initialBinding: AllBinDing(),
        home: HomeScreen());
  }
}
