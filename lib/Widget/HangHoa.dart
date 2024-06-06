import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxtest/REST_API/controller/hanghoa_controller.dart';

class HangHoa extends StatelessWidget {
  HangHoa({super.key});

  final HangHoaController hangHoa = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hàng Hoá'),
        ),
        body: GetBuilder<HangHoaController>(builder: (hangHoa) {
          if (hangHoa.hangHoaModel != null) {
            return ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Card(
                      child: SizedBox(
                        height: 250,
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Image(
                                fit: BoxFit.fill,
                                height: double.infinity,
                                image: NetworkImage(hangHoa
                                    .hangHoaModel![index].hinhanh![0].linkanh
                                    .toString())),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  hangHoa.hangHoaModel![index].tenhh.toString(),
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(hangHoa.hangHoaModel![index].gia
                                    .toString()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(hangHoa.hangHoaModel![index].soluong
                                    .toString()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(hangHoa.hangHoaModel![index].ngaysanxuat
                                    .toString()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(hangHoa.hangHoaModel![index].hansudung
                                    .toString()),
                                const SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    hangHoa.hangHoaModel![index].mota
                                        .toString(),
                                    softWrap: true,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        }));
  }
}
