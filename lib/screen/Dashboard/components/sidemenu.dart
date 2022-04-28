import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/size.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: const BoxDecoration(color: secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                alignment: Alignment.topCenter,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: 35,
                  height: 20,
                  child: SvgPicture.asset("assets/images/mac-action.svg"),
                ),
              ),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/home.svg",
                    color: ButtonColor,
                  )),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/pie-chart.svg",
                    color: ButtonColor,
                  )),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/clipboard.svg",
                    color: ButtonColor,
                  )),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/credit-card.svg",
                    color: ButtonColor,
                  )),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/trophy.svg",
                    color: ButtonColor,
                  )),
              IconButton(
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/invoice.svg",
                    color: ButtonColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
