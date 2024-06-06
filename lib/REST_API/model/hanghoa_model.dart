class HangHoaModel {
  String? sId;
  String? tenhh;
  String? mota;
  int? gia;
  int? soluong;
  String? phankhuc;
  String? thuonghieu;
  String? ghichu;
  String? hansudung;
  String? ngaysanxuat;
  String? idloai;
  List<HinhanhModel>? hinhanh;

  HangHoaModel(
      {this.sId,
      this.tenhh,
      this.mota,
      this.gia,
      this.soluong,
      this.phankhuc,
      this.thuonghieu,
      this.ghichu,
      this.hansudung,
      this.ngaysanxuat,
      this.idloai,
      this.hinhanh});

  HangHoaModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    tenhh = json['tenhh'];
    mota = json['mota'];
    gia = json['gia'];
    soluong = json['soluong'];
    phankhuc = json['phankhuc'];
    thuonghieu = json['thuonghieu'];
    ghichu = json['ghichu'];
    hansudung = json['hansudung'];
    ngaysanxuat = json['ngaysanxuat'];
    idloai = json['idloai'];
    if (json['hinhanh'] != null) {
      hinhanh = <HinhanhModel>[];
      json['hinhanh'].forEach((v) {
        hinhanh!.add(new HinhanhModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['tenhh'] = this.tenhh;
    data['mota'] = this.mota;
    data['gia'] = this.gia;
    data['soluong'] = this.soluong;
    data['phankhuc'] = this.phankhuc;
    data['thuonghieu'] = this.thuonghieu;
    data['ghichu'] = this.ghichu;
    data['hansudung'] = this.hansudung;
    data['ngaysanxuat'] = this.ngaysanxuat;
    data['idloai'] = this.idloai;
    if (this.hinhanh != null) {
      data['hinhanh'] = this.hinhanh!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HinhanhModel {
  String? sId;
  String? linkanh;
  String? tenanh;
  String? idhanghoa;

  HinhanhModel({this.sId, this.linkanh, this.tenanh, this.idhanghoa});

  HinhanhModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    linkanh = json['linkanh'] ??
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9atbLC0rQb5xxQ_QFVsS7hvS5YIODCeBD4Q&s";
    tenanh = json['tenanh'];
    idhanghoa = json['idhanghoa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['linkanh'] = this.linkanh;
    data['tenanh'] = this.tenanh;
    data['idhanghoa'] = this.idhanghoa;
    return data;
  }
}
