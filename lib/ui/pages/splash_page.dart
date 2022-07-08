import 'dart:async';

import 'package:dog_diary/shared/theme.dart';
import 'package:dog_diary/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, 'get-started', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 135,
              width: 135,
              margin: EdgeInsets.only(
                bottom: 50,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_anjing.png',
                  ),
                ),
              ),
            ),
            Text(
              'DOG \nDIARY',
              style: whiteTextstyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
                letterSpacing: 10,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
