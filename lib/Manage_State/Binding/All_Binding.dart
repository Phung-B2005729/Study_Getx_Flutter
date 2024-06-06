import 'package:get/get.dart';
import 'package:getxtest/Get_Storage/test_storage.dart';
import 'package:getxtest/Manage_State/Get_Controller/Home_Controller.dart';
import 'package:getxtest/Manage_State/Get_Controller/counter_controller.dart';
import 'package:getxtest/REST_API/controller/hanghoa_controller.dart';

class AllBinDing implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => CounterController(), fenix: true);
    Get.lazyPut(() => TestStorageController(), fenix: true);
    Get.lazyPut(() => HangHoaController(), fenix: true);
  }
}
