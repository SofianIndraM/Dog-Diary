import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/page_cubit.dart';
import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String menu;
  const CustomBottomNavigationItem({
    Key? key,
    required this.menu,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 16,
          ),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? kWhiteColor
                : kInactiveColor,
          ),
          Text(
            menu,
            style: context.read<PageCubit>().state == index
                ? whiteTextstyle.copyWith(
                    fontWeight: light,
                    fontSize: 10,
                  )
                : transparentTextStyle.copyWith(
                    fontWeight: light,
                    fontSize: 10,
                  ),
          )
        ],
      ),
    );
  }
}
