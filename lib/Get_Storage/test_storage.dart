import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class TestStorageController extends GetxController {
  var name = ''.obs;
  // Rx => bắt đầu kiểu dữ liệu , Int kiểu int => RxInt  => Biến kiểu int

  GetStorage box = GetStorage();
  void setName() {
    name.value = 'john';
    box.write('name', name.value);
  }

  void getName() {
    String name = box.read('name') ?? 'deleted';
    print(name);
  }

  void deleteName() {
    box.remove('name');
    print('it remove');
  }
}
