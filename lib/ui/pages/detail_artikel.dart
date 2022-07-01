import 'package:dog_diary/models/artikel_model.dart';
import 'package:dog_diary/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailArtikel extends StatelessWidget {
  final ArtikelModel artikel;
  const DetailArtikel(this.artikel, {Key? key}) : super(key: key);

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
              artikel.judul,
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              artikel.hari,
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
                  image: NetworkImage(
                    artikel.imageurl,
                  ),
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
              artikel.isi,
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
                  GestureDetector(
                    onTap: () async {
                      await launch(artikel.sumber);
                    },
                    child: Text(
                      artikel.sumber,
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                      ),
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
              artikel.penulis,
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
