import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarCustom extends PreferredSize {
  final BuildContext context;
  final String title;
  final Widget? leading;

  AppBarCustom(
    {required this.context, this.leading, 
    required this.title,
    Key? key,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            toolbarHeight: 80,
            leadingWidth: 70,
            backgroundColor: Colors.black,
            leading: leading,
            titleSpacing: 4,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'Flutterando Masterclass',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset('assets/icons/awesome-moon.svg'),
                onPressed: () {},
              )
            ],
          ),
        );
}
