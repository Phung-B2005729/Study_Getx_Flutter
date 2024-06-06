import 'package:get/get.dart';

class HomeController extends GetxController {
  var name = 'Jonh'.obs;
  // Rx => bắt đầu kiểu dữ liệu , Int kiểu int => RxInt  => Biến kiểu int

  void changeName(namet) {
    //print('gọi chage name');
    // print(namet);
    // kiểu string change biến thì dùng .value
    name.value = namet;
  }
}
