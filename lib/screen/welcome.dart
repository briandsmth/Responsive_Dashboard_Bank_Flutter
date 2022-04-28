import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/welcome/components/body.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body(),);
  }
}