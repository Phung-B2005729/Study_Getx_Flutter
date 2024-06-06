import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtest/Manage_State/Get_Controller/Home_Controller.dart';
import 'package:getxtest/Manage_State/Get_Controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});

  // tìm biến trong class counter
  final CounterController counter = Get.find();
  final HomeController Home = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(
          () => Text('${counter.count}',
              // gọi biến count trong Counter()
              style: const TextStyle(fontSize: 40, color: Colors.red)),
        ),
        Obx(
          () => Text('${Home.name}',
              // gọi biến count trong Counter()
              style: const TextStyle(fontSize: 80, color: Colors.amberAccent)),
        ),
        ElevatedButton(
            onPressed: () {
              Get.snackbar('Thông báo', 'Text snackbar with get X',
                  colorText: Colors.amber);
              // chuyển đến trang sencond
              Home.changeName('NTTP02');
            },
            child: const Text("Show And Change Name"))
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.add();
          // gọi hàm add
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
