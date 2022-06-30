import 'package:dog_diary/shared/theme.dart';
import 'package:flutter/material.dart';

class TentangPage extends StatelessWidget {
  const TentangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_kaki.png',
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Menu Tentang',
                  style: whiteTextstyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Informasi mengenai aplikasi\ndan pembuat aplikasi',
                  style: whiteTextstyle.copyWith(
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_kaki.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget tentangAplikasi() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Aplikasi',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Informasi Mengenai Aplikasi',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 25,
                    ),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/icon_apk.png',
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Dog Diary',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Dog Diary adalah sebuah aplikasi pengenal\nanjing berbasis Android. Aplikasi ini dapat\ndigunakan untuk mengidentifikasikan\njenis anjing secara real time. Pada aplikasi ini\njuga terdapat informasi mengenai anjing, \ndan artikel menarik mengenai anjing.',
                    style: blackTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget tentangPembuat() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 120,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tentang Pembuat',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Informasi Mengenai Pembuat Aplikasi',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  bottom: 30,
                ),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/cover.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'Aplikasi Ini Dibuat Oleh :',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Nama : Sofian Indra Maulana',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'NPM     : 56418794',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Kelas   : 4IA04',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Dosen Pembimbing :',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              'Dr. Anacostia Kowanda., SKom., MMSI',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                tentangAplikasi(),
                tentangPembuat(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
