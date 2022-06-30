import 'package:dog_diary/models/anjing_kecil_model.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class AnjingKecilCard extends StatelessWidget {
  final AnjingKecilModel anjingkecil;
  const AnjingKecilCard(
    this.anjingkecil, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(anjingkecil),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          left: 24,
          bottom: 30,
        ),
        padding: EdgeInsets.all(10),
        height: 323,
        width: 200,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kGreyColor.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(7.0, 8.0),
            ),
          ],
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 180,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    anjingkecil.imageurl,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    anjingkecil.jenis,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    anjingkecil.asal,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
