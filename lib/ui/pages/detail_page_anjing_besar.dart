import 'package:dog_diary/models/anjing_besar_model.dart';
import 'package:dog_diary/models/anjing_kecil_model.dart';
import 'package:dog_diary/shared/theme.dart';
import 'package:dog_diary/ui/widgets/audio_button.dart';
import 'package:dog_diary/ui/widgets/custom_button.dart';
import 'package:dog_diary/ui/widgets/foto_item.dart';
import 'package:dog_diary/ui/widgets/makanan_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageAnjingBesar extends StatelessWidget {
  final AnjingBesarModel anjingbesars;
  const DetailPageAnjingBesar(this.anjingbesars, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              anjingbesars.imageurl,
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        margin: EdgeInsets.only(top: 236),
        height: 214,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          children: [
            //NOTE: EMBLEM
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(
                top: 30,
                bottom: 256,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/emblem.png',
                  ),
                ),
              ),
            ),
            //NOTE: TITLE
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        anjingbesars.jenis,
                        style: whiteTextstyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        anjingbesars.asal,
                        style: whiteTextstyle.copyWith(
                          fontWeight: light,
                          fontSize: 16,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                AudioButton(suara: anjingbesars.suara)
              ],
            ),
            //NOTE: ABOUT
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: defaultMargin),
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kGreyColor.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(7.0, 8.0),
                  ),
                ],
                borderRadius: BorderRadius.circular(defaultRadius),
                color: kWhiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tentang',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.tentang,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  //NOTE: ASAL
                  SizedBox(height: 20),
                  Text(
                    'Asal',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.asal,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  //NOTE: TINGGI
                  SizedBox(height: 20),
                  Text(
                    'Tinggi',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.tinggi,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  //NOTE: HARAPAN HIDUP
                  SizedBox(height: 20),
                  Text(
                    'Harapan Hidup',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.hidup,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ), //NOTE: WARNA
                  SizedBox(height: 20),
                  Text(
                    'Warna',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.warna,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ), //NOTE: SIFAT
                  SizedBox(height: 20),
                  Text(
                    'Sifat',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.sifat,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  //NOTE: HARGA
                  SizedBox(height: 20),
                  Text(
                    'Harga',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    anjingbesars.harga,
                    style: blackTextStyle.copyWith(
                      height: 2,
                      fontSize: 12,
                    ),
                  ),
                  //NOTE: FOTO
                  SizedBox(height: 20),
                  Text(
                    'Foto',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      FotoItem(imageUrl: anjingbesars.foto1),
                      FotoItem(imageUrl: anjingbesars.foto2),
                      FotoItem(imageUrl: anjingbesars.foto3),
                    ],
                  ),
                  //NOTE: MAKANAN
                  SizedBox(height: 20),
                  Text(
                    'Makanan',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MakananItem(makanan: anjingbesars.makanan1),
                      MakananItem(makanan: anjingbesars.makanan2),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MakananItem(makanan: anjingbesars.makanan3),
                      MakananItem(makanan: anjingbesars.makanan4),
                    ],
                  ),
                  //NOTE: SUMBER
                  SizedBox(height: 20),
                  Text(
                    'Sumber',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  GestureDetector(
                    onTap: () async {
                      await launch(anjingbesars.sumber);
                    },
                    child: Text(
                      anjingbesars.sumber,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              title: 'Beli Anjing',
              onPressed: () async {
                await launch(anjingbesars.beli);
              },
              margin: EdgeInsets.only(
                bottom: 30,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
