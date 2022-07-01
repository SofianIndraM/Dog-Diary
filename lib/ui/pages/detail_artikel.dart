import 'package:dog_diary/shared/theme.dart';
import 'package:flutter/material.dart';

class DetailArtikel extends StatelessWidget {
  const DetailArtikel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Waspada, Ini Tanda-Tanda Anjing Kelebihan Berat Badan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'Kamis, 26 Mei 2022',
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 30,
              ),
              height: 214,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/foto_poodle.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget isi() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          bottom: 120,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'JAKARTA, KOMPAS.com - Anjing merupakan salah satu hewan peliharaan yang lucu dan menggemaskan dalam segala bentuk serta ukuran. Namun, kebanyakan orang cenderung menyukai anjing yang bertubuh gempal, bahkan gemuk. Anjing dengan tubuh gemuk terlihat semakin menggemaskan. Namun, sebetulnya, para pemilik anjing perlu mengkhawatirkan dan mewaspadai ketika sahabat bulunya bertubuh gemuk.  Pasalnya, anjing bertubuh gemuk lebih mudah menyebabkan kegemukan atau obesitas, yang akhirnya membuatnya lebih rentan mengalami sejumlah masalah kesehatan seperti diabetes melitus, jantung, osteoartritis, kanker, bahkan memperpendek usianya. Karena itu, sebagai "orang tua" anjing, penting untuk bertanggung jawab terhadap berat badan anjing peliharaan dan mengetahui tanda-tanda anjing kegemukan. Untuk mengetahui, tanda-tanda anjing kegemukan sangatlah mudah. Ada beberapa tanda yang menunjukkan anjing kegemukan atau kelebihan berat badan.  "Tanda paling jelas bahwa anjing kelebihan berat badan adalah mereka tampak sedikit gemuk karena kelebihan lemak yang menumpuk di sekitar tubuh," kata Katherine Macmillan, dokter hewan yang berpraktik di Locum Veterinaria, Australia, kepada 9Honey, Kamis (26/5/2022).  Macmillan mengatakan ada sebagian anjing secara alami lebih gemuk daripada anjing lain, tetapi semua harus memiliki pinggang yang jelas jika dilihat dari atas dan samping—profil mereka harus "terselip" di depan bagian belakangnya. "Ini mungkin lebih sulit diukur pada anjing yang memiliki bulu lebat atau panjang, kecuali dalam keadaan basah." Selain itu, tanda anjing kegemukan adalah mudah kelelahan. Anjing yang kelebihan berat badan sering kali merasa lesu dan kurang antusias untuk berolahraga.',
              style: blackTextStyle.copyWith(
                height: 2,
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sumber',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'https://www.kompas.com',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Penulis : ',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'Esra Dopita Maret',
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 12,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Isi Artikel',
          style: whiteTextstyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            isi(),
          ],
        ),
      ),
    );
  }
}
