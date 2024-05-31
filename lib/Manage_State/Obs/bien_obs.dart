import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ObsMyTest extends StatelessWidget {
  var counter = 0.obs; // khai báo biến thay đổi
  ObsMyTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Obx(
              // gọi hàm hiển thị giá trị counter
              () => Text(
                    '$counter',
                    style: TextStyle(fontSize: 30),
                  )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter++,
        child: const Icon(Icons.add),
      ),
    );
  }
}
