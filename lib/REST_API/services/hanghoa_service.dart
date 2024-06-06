import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getxtest/REST_API/model/hanghoa_model.dart';

class HangHoaService extends GetConnect {
  // httpClient  là thuộc tính trong lớp GetConnect của thư viện GetX trong Flutter.
  // baseUrl sử dụng để đặt URL cơ sở (base URL) cho tất cả các yêu cầu HTTP
  //
  final box = GetStorage();

  HangHoaService() {
    httpClient.baseUrl =
        "http://192.168.78.100:3500/api"; // "http://192.168.78.100:3500/api";
    // Thêm token vào headers cho mỗi yêu cầu
    httpClient.addRequestModifier<void>((request) {
      final token =
          "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2NDlmN2FjMmJhM2Y1MDMwMTFjMGQ4MSIsImlhdCI6MTcxNzY1NzU3MywiZXhwIjoxNzE3NjU5MzczfQ.ToTJoP8y8sZEjGwEnrlBthfXV6nkPfr6ebYYc4Lqbj4";
      if (token != null) {
        request.headers['Authorization'] = 'Bearer $token';
      }
      return request;
    });
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

  void getUser() async {
    var response = await get("/user/getuser");
    print('getuser');
    print(response.body);
  }
}
