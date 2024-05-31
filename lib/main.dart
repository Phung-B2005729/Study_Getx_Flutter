import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: MyApp()));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var counter = 0.obs; // khai báo biến thay đổi
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
                // gọi hàm hiển thị giá trị counter
                () => Text('$counter', style: const TextStyle(fontSize: 28))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
