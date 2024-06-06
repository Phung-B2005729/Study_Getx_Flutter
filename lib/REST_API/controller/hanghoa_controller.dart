import 'package:get/get.dart';
import 'package:getxtest/REST_API/model/hanghoa_model.dart';
import 'package:getxtest/REST_API/services/hanghoa_service.dart';

class HangHoaController extends GetxController {
  // Rx => bắt đầu kiểu dữ liệu , Int kiểu int => RxInt  => Biến kiểu int
  List<HangHoaModel>? hangHoaModel;
  @override
  void onInit() {
    print('on Init');
    // getAll();
    HangHoaService().getUser();
    super.onInit();
    //super.onInit();
  }

  void getAll() async {
    hangHoaModel = await HangHoaService().getAll();
    update();
  }
}
