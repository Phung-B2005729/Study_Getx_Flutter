import 'package:get/get.dart';
import 'package:getxtest/REST_API/model/hanghoa_model.dart';

class HangHoaService extends GetConnect {
  // httpClient  là thuộc tính trong lớp GetConnect của thư viện GetX trong Flutter.
  // baseUrl sử dụng để đặt URL cơ sở (base URL) cho tất cả các yêu cầu HTTP
  //
  HangHoaService() {
    httpClient.baseUrl =
        "http://192.168.78.100:3002/api"; // "http://192.168.78.100:3500/api";
  }

  Future<List<HangHoaModel>> getAll() async {
    var response = await get("/hanghoa");
    var list = response.body;
    print(list);
    var listHangHoa = <HangHoaModel>[];
    list.forEach((v) {
      print(v);
      listHangHoa.add(new HangHoaModel.fromJson(v));
    });
    return listHangHoa;
  }
}
