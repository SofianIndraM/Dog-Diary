import 'package:dog_diary/cubit/artikel_cubit.dart';
import 'package:dog_diary/ui/widgets/artikel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/artikel_model.dart';
import '../../shared/theme.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({Key? key}) : super(key: key);

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  void initState() {
    context.read<ArtikelCubit>().fetchArtikel();
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
                            'Menu Artikel',
                            style: whiteTextstyle.copyWith(
                              fontSize: 24,
                              fontWeight: semiBold,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            'Temukan berbagai artikel\nmenarik mengenai anjing',
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
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 30,
                  ),
                  child: Text(
                    'Semua Artikel',
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

    Widget artikel(List<ArtikelModel> artikels) {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
            children: artikels.map((ArtikelModel artikels) {
          return ArtikelCard(artikels);
        }).toList()),
      );
    }

    return BlocConsumer<ArtikelCubit, ArtikelState>(
      listener: (context, state) {
        if (state is ArtikelFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ArtikelSuccess) {
          return ListView(
            children: [
              header(),
              artikel(state.artikels),
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
