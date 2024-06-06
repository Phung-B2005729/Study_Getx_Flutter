import 'package:get/get.dart';

class CounterController extends GetxController {
  // khai báo biên
  RxInt count = 0.obs;
  // Rx => bắt đầu kiểu dữ liệu , Int kiểu int => RxInt  => Biến kiểu int

  // khai báo hàm
  void add() {
    count++;
    // update(); nếu biến khai báo không dùng obs thì thêm update vào để thông báo biến đã thay đổi và widget load lại
  }
}
