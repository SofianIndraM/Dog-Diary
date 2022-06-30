import 'package:dog_diary/cubit/anjing_kecil_cubit.dart';
import 'package:dog_diary/models/anjing_besar_model.dart';
import 'package:dog_diary/shared/theme.dart';
import 'package:dog_diary/ui/widgets/anjing_besar_card.dart';
import 'package:dog_diary/ui/widgets/anjing_kecil_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/anjing_kecil_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<AnjingKecilCubit>().fetchAnjingKecil();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Menu Beranda',
                            style: whiteTextstyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Informasi Mengenai Jenis Anjing',
                            style: whiteTextstyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    'Anjing Kecil',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget anjingKecil(List<AnjingKecilModel> anjingkecils) {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: anjingkecils.map((AnjingKecilModel anjingkecil) {
              return AnjingKecilCard(anjingkecil);
            }).toList(),
          ),
        ),
      );
    }

    Widget anjingBesar(List<AnjingBesarModel> anjingbesars) {
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
              'Anjing Sedang & Besar',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            Column(
              children: anjingbesars.map((AnjingBesarModel anjingbesars) {
                return AnjingBesarCard(anjingbesars);
              }).toList(),
            )
          ],
        ),
      );
    }

    return BlocConsumer<AnjingKecilCubit, AnjingKecilState>(
      listener: (context, state) {
        if (state is AnjingKecilFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is AnjingKecilSuccess) {
          return ListView(
            children: [
              header(),
              anjingKecil(state.anjingkecils),
              anjingBesar(state.anjingbesars),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
