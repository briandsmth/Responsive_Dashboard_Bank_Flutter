// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;
  const PaymentListTile(
      {Key? key, required this.icon, required this.label, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 0, right: 20),
      visualDensity: VisualDensity.standard,
      leading: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: SvgPicture.asset(
          icon,
          width: 20,
        ),
      ),
      title: Text(
        label,
        style: basicStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Succesfully",
            style: basicStyle.copyWith(
                fontSize: 12, fontWeight: FontWeight.w400, color: secondary),
          ),
          Text(
            amount,
            style:
                basicStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      onTap: () {
        print('Tap');
      },
      selected: true,
    );
  }
}
