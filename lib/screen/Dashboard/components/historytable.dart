import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/responsive.dart';
import 'package:flutter_application_1/config/size.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/data.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)
            ? double.infinity
            : SizeConfig.screenWidth,
        child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: List.generate(
                transactionHistory.length,
                (index) => TableRow(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 20),
                            child: CircleAvatar(
                              radius: 17,
                              backgroundImage: AssetImage(
                                  transactionHistory[index]["avatar"]
                                      .toString()),
                            ),
                          ),
                          Text(
                            transactionHistory[index]["label"].toString(),
                            style: basicStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: secondary),
                          ),
                          Text(
                            transactionHistory[index]["time"].toString(),
                            style: basicStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: secondary),
                          ),
                          Text(
                            transactionHistory[index]["amount"].toString(),
                            style: basicStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: secondary),
                          ),
                          Text(
                            transactionHistory[index]["status"].toString(),
                            style: basicStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: secondary),
                          ),
                        ]))),
      ),
    );
  }
}
