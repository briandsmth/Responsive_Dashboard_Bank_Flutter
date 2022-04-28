import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/size.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/screen/Dashboard/components/paymentlisttile.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: (Colors.grey[400]!),
                    blurRadius: 15,
                    offset: const Offset(10, 15))
              ]),
          child: Image.asset("assets/images/card.png"),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Activities",
              style: basicStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w800),
            ),
            Text(
              "28 Apr 2022",
              style: basicStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400, color: secondary),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(
              recentActivities.length,
              (index) => PaymentListTile(
                    icon: recentActivities[index]["icon"].toString(),
                    label: recentActivities[index]["label"].toString(),
                    amount: recentActivities[index]["amount"].toString(),
                  )),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upcoming Payments",
              style: basicStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w800),
            ),
            Text(
              "28 Apr 2022",
              style: basicStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400, color: secondary),
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        Column(
          children: List.generate(
              upcomingPayments.length,
              (index) => PaymentListTile(
                    icon: upcomingPayments[index]["icon"].toString(),
                    label: upcomingPayments[index]["label"].toString(),
                    amount: upcomingPayments[index]["amount"].toString(),
                  )),
        ),
      ],
    );
  }
}
