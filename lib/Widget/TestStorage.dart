// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:getxtest/Get_Storage/test_storage.dart';

// ignore: must_be_immutable
class TestStorage extends StatelessWidget {
  //final counter = Get.put(CounterController(), permanent: false);
  // gọi sử dụng class Counter đã khai báo ở counter_controller.dart
  TestStorage({super.key});
  final TestStorageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeSrceen'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    controller.setName();
                  },
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.amber)),
                  child: const Text("SetName")),
            ),
            // tạo button chuyển trang
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  controller.getName();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green)),
                child: const Text("GetName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  controller.deleteName();
                },
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.red)),
                child: const Text("DeleteName"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // gọi hàm add
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
