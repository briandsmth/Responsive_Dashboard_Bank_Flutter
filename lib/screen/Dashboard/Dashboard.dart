// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Dashboard/components/body.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}