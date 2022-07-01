import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_artikel.dart';

class ArtikelCard extends StatelessWidget {
  const ArtikelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailArtikel(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          bottom: 16,
        ),
        height: 152,
        width: double.infinity,
        padding: EdgeInsets.all(10),
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 120,
              width: 120,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/foto_poodle.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Waspada, Ini Tanda-tanda Anjing Kelebihan Berat Badan',
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Selasa, 5 April 2021',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
