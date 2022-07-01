import 'package:equatable/equatable.dart';

class ArtikelModel extends Equatable {
  final String id;

  final String hari;
  final String imageurl;
  final String isi;
  final String judul;
  final String penulis;
  final String sumber;

  ArtikelModel({
    required this.id,
    this.hari = '',
    this.isi = '',
    this.judul = '',
    this.penulis = '',
    this.imageurl = '',
    this.sumber = '',
  });

  factory ArtikelModel.fromJson(String id, Map<String, dynamic> json) =>
      ArtikelModel(
        id: id,
        imageurl: json['imageurl'],
        sumber: json['sumber'],
        isi: json['isi'],
        judul: json['judul'],
        hari: json['hari'],
        penulis: json['penulis'],
      );

  @override
  List<Object?> get props => [
        id,
        imageurl,
        sumber,
        judul,
        isi,
        hari,
        penulis,
      ];
}
