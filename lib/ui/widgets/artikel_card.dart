import 'package:dog_diary/models/artikel_model.dart';
import 'package:dog_diary/ui/widgets/anjing_besar_card.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_artikel.dart';

class ArtikelCard extends StatelessWidget {
  final ArtikelModel artikel;
  const ArtikelCard(this.artikel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailArtikel(artikel),
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
                  image: NetworkImage(
                    artikel.imageurl,
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
                    artikel.judul,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    artikel.hari,
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
