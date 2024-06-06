// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TranslationScreen extends StatelessWidget {
  //final counter = Get.put(CounterController(), permanent: false);
  // gọi sử dụng class Counter đã khai báo ở counter_controller.dart
  const TranslationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello'.tr,
              style: const TextStyle(fontSize: 80, color: Colors.orange),
            ),
            ElevatedButton(
                onPressed: () {
                  GetStorage box = GetStorage();
                  if (Get.locale == const Locale("en")) {
                    Get.updateLocale(const Locale('vn'));
                    box.write('lang', 'vn');
                  } else {
                    Get.updateLocale(const Locale('en'));
                    box.write('lang', 'en');
                  }
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green)),
                child: Text("Language".tr)),
          ],
        ),
      ),
    );
  }
}
