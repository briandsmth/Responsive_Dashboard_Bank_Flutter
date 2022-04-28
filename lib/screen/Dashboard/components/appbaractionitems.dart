// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/calendar.svg",
              width: 20,
              color: ButtonColor,
            )),
        const SizedBox(
          width: 10,
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/ring.svg",
              width: 20,
              color: ButtonColor,
            )),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 17,
              backgroundImage: AssetImage("assets/images/me.JPG"),
            ),
            const Icon(
              Icons.arrow_drop_down_outlined,
              color: ButtonColor,
            )
          ],
        )
      ],
    );
  }
}
