import 'package:dog_diary/models/anjing_besar_model.dart';
import 'package:dog_diary/ui/pages/detail_page_anjing_besar.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../pages/detail_page.dart';

class AnjingBesarCard extends StatelessWidget {
  final AnjingBesarModel anjingbesars;
  const AnjingBesarCard(
    this.anjingbesars, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPageAnjingBesar(anjingbesars),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 16,
        ),
        padding: EdgeInsets.all(10),
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          boxShadow: [
            BoxShadow(
              color: kGreyColor.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(7.0, 8.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 16,
              ),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    anjingbesars.imageurl,
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
                    anjingbesars.jenis,
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    anjingbesars.asal,
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
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
