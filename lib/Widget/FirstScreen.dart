// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/Get_Storage/test_storage.dart';
import 'package:getxtest/Manage_State/Get_Controller/Home_Controller.dart';

import 'package:getxtest/Widget/TestStorage.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  final HomeController Home = Get.find();
  final TestStorageController controller = Get.find();
  // gọi sử dụng class Counter đã khai báo ở counter_controller.dart
  FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Text('${controller.name}',
                  // gọi biến count trong Counter()
                  style: const TextStyle(fontSize: 80, color: Colors.orange)),
            ),
            Obx(
                // gọi hàm hiển thị giá trị counter // Nếu biến trong Counter không dùng obs thì gọi hiển thị dùng GetBuilder()
                () => Text('${Home.name}',
                    // gọi biến count trong CounterController()
                    style: const TextStyle(fontSize: 50, color: Colors.amber))),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => TestStorage());
                  // chuyển đến trang sencond
                },
                child: const Text("Go to  page Home ")),
            // tạo button chuyển trang
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondScreen());
                  // chuyển đến trang sencond
                },
                child: const Text("Go to  page Second ")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Home.changeName('ArCH');
                  // chuyển đến trang sencond
                },
                child: const Text("Change Name ")),
            Text(
              'Hello'.tr,
              style: const TextStyle(fontSize: 80, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
