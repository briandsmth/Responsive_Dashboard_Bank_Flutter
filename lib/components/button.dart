import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  const Button(
      {Key? key,
      required this.text,
      required this.press,
      this.color = ButtonColor,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      width: size.width - 2 * 45,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            primary: color,
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          text,
          style: basicStyle.copyWith(
              fontSize: 20, fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    );
  }
}
