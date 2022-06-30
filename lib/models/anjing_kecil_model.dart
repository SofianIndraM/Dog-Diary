import 'package:equatable/equatable.dart';

class AnjingKecilModel extends Equatable {
  final String id;

  final String asal;
  final String beli;
  final String foto1;
  final String foto2;
  final String foto3;
  final String harga;
  final String hidup;
  final String imageurl;
  final String jenis;
  final String makanan1;
  final String makanan2;
  final String makanan3;
  final String makanan4;
  final String sifat;
  final String suara;
  final String sumber;
  final String tentang;
  final String tinggi;
  final String warna;

  AnjingKecilModel({
    required this.id,
    this.asal = '',
    this.beli = '',
    this.foto1 = '',
    this.foto2 = '',
    this.foto3 = '',
    this.harga = '',
    this.hidup = '',
    this.imageurl = '',
    this.jenis = '',
    this.makanan1 = '',
    this.makanan2 = '',
    this.makanan3 = '',
    this.makanan4 = '',
    this.sifat = '',
    this.suara = '',
    this.sumber = '',
    this.tentang = '',
    this.tinggi = '',
    this.warna = '',
  });

  factory AnjingKecilModel.fromJson(String id, Map<String, dynamic> json) =>
      AnjingKecilModel(
        id: id,
        asal: json['asal'],
        beli: json['beli'],
        foto1: json['foto1'],
        foto2: json['foto2'],
        foto3: json['foto3'],
        harga: json['harga'],
        hidup: json['hidup'],
        imageurl: json['imageurl'],
        jenis: json['jenis'],
        makanan1: json['makanan1'],
        makanan2: json['makanan2'],
        makanan3: json['makanan3'],
        makanan4: json['makanan4'],
        sifat: json['sifat'],
        suara: json['suara'],
        sumber: json['sumber'],
        tentang: json['tentang'],
        tinggi: json['tinggi'],
        warna: json['warna'],
      );

  @override
  List<Object?> get props => [
        id,
        asal,
        beli,
        foto1,
        foto2,
        foto3,
        harga,
        hidup,
        imageurl,
        jenis,
        makanan1,
        makanan2,
        makanan3,
        makanan4,
        sifat,
        suara,
        sumber,
        tentang,
        tinggi,
        warna,
      ];
}
