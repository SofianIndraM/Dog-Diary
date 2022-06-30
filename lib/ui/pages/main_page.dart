import 'package:dog_diary/cubit/page_cubit.dart';
import 'package:dog_diary/shared/theme.dart';
import 'package:dog_diary/ui/pages/home_page.dart';
import 'package:dog_diary/ui/pages/tentang_page.dart';
import 'package:dog_diary/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'article_page.dart';
import 'camera_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return CameraPage();
        case 2:
          return ArticlePage();
        case 3:
          return TentangPage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomBottomNavigationItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
                menu: 'Beranda',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imageUrl: 'assets/icon_kamera.png',
                menu: 'Kamera',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imageUrl: 'assets/icon_artikel.png',
                menu: 'Artikel',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imageUrl: 'assets/icon_info.png',
                menu: 'Tentang',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigation(),
            ],
          ),
        );
      },
    );
  }
}
