import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/responsive.dart';
import 'package:flutter_application_1/constants.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dasboard",
                style: basicStyle.copyWith(
                    fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Text(
                "Payments updates",
                style: basicStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: secondary),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
            flex: Responsive.isDesktop(context) ? 1 : 3,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(left: 40, right: 5),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ButtonColor,
                  ),
                  hintText: "Search",
                  hintStyle: const TextStyle(color: secondary, fontSize: 14)),
            ))
      ],
    );
  }
}
