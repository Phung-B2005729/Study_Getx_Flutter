// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxtest/Widget/FirstScreen.dart';
import 'package:getxtest/Widget/TestStorage.dart';
import 'package:getxtest/Widget/translations.dart';

import 'SecondScreen.dart';

class HomeScreen extends StatelessWidget {
  //final counter = Get.put(CounterController(), permanent: false);
  // gọi sử dụng class Counter đã khai báo ở counter_controller.dart
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeSrceen'.tr),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => FirstScreen());
                    // chuyển đến trang sencond
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.green)),
                  child: const Text("Go to  page FistScreen")),
              // tạo button chuyển trang
              ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondScreen());
                  // chuyển đến trang sencond
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.orange)),
                child: const Text("Go to  page Second Screen"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => TestStorage());
                    // chuyển đến trang sencond
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.yellow)),
                  child: const Text("Go to  page TestStorage")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const TranslationScreen());
                    // chuyển đến trang sencond
                  },
                  child: const Text("Go to  page Trangslation")),
            ])));
  }
}
