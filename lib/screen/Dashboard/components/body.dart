import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/responsive.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screen/Dashboard/components/appbaractionitems.dart';
import 'package:flutter_application_1/screen/Dashboard/components/header.dart';
import 'package:flutter_application_1/screen/Dashboard/components/historytable.dart';
import 'package:flutter_application_1/screen/Dashboard/components/infocard.dart';
import 'package:flutter_application_1/screen/Dashboard/components/paymentdetail.dart';
import 'package:flutter_application_1/screen/Dashboard/components/sidemenu.dart';

import '../../../config/size.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState?.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: ButtonColor,
                  )),
              actions: const [
                AppBarActionItems(),
              ],
            )
          : const PreferredSize(child: SizedBox(), preferredSize: Size.zero),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              child: SideMenu(),
              flex: 1,
            ),
          Expanded(
              flex: 10,
              child: SafeArea(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 4,
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.spaceBetween,
                        children: const [
                          InfoCard(
                            icon: 'assets/images/credit-card.svg',
                            label: 'Transfer via \nCard Banks',
                            amount: '\$2000',
                          ),
                          InfoCard(
                            icon: 'assets/images/transfer.svg',
                            label: 'Transfer via \nOnline Banks',
                            amount: '\$200',
                          ),
                          InfoCard(
                            icon: 'assets/images/bank.svg',
                            label: 'Transfer \nSame Bank',
                            amount: '\$2000',
                          ),
                          InfoCard(
                            icon: 'assets/images/invoice.svg',
                            label: 'Transfer to \nOther Banks',
                            amount: '\$2500',
                          ),
                        ],
                      ),
                    ), //Upper Menu
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Balance",
                              style: basicStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: secondary),
                            ),
                            Text("\$5000",
                                style: basicStyle.copyWith(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ))
                          ],
                        ),
                        Text(
                          "Past 30 DAYS",
                          style: basicStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: secondary),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 3,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "History",
                          style: basicStyle.copyWith(
                              fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Transaction of last 6 month",
                          style: basicStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: secondary),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical * 3,
                        ),
                        const HistoryTable(),
                        if (!Responsive.isDesktop(context)) const PaymentDetailList()
                      ],
                    ),
                    if (Responsive.isDesktop(context))
                      Expanded(
                          flex: 4,
                          child: SafeArea(
                            child: Container(
                              width: double.infinity,
                              height: SizeConfig.screenHeight,
                              decoration: const BoxDecoration(
                                color: secondaryBg,
                              ),
                              child: SingleChildScrollView(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30, horizontal: 30),
                                child: Column(
                                  children: const [
                                    AppBarActionItems(),
                                    PaymentDetailList(),
                                  ],
                                ),
                              ),
                            ),
                          ))
                  ],
                ),
              )))
        ],
      )),
    );
  }
}
