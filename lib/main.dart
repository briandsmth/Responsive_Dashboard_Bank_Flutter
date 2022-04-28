import 'package:flutter/material.dart';
import 'constants.dart';
import 'screen/welcome.dart';
import 'colorpallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistem Inventaris',
      theme: ThemeData(
          primarySwatch: ColorPalette.purplecolor,
          canvasColor: Colors.transparent,
          primaryColor: secondary,
          scaffoldBackgroundColor: const Color(0xfff5f5fd)),
      home: const Welcome(),
    );
  }
}
