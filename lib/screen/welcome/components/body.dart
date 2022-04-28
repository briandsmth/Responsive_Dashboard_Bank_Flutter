// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screen/Dashboard/Dashboard.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isHidden = true;
  bool _isHiddenPassword = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          bottom: false,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              Image.asset(
                "assets/images/logo.jpg",
                // height: size.height * 0.25,
                // fit: BoxFit.fill,
              ),
              const SizedBox(height: 150),
              const Text(
                "By clicking Log in, you agree with our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              // Padding(padding: EdgeInsets.only(bottom: 50.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Button(
                      text: "LOGIN",
                      press: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Wrap(
                                  children: [
                                    //Form Input Here
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 24),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text("Welcome...",
                                                        style:
                                                            basicStyle.copyWith(
                                                                fontSize: 20,
                                                                color: Colors
                                                                    .black)),
                                                    Text("LOGIN",
                                                        style:
                                                            basicStyle.copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30,
                                                                color: Colors
                                                                    .black)),
                                                  ],
                                                ),
                                                const Spacer(),
                                                Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Image.asset(
                                                      "assets/images/down.png",
                                                      height: 30,
                                                      width: 30,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextField(
                                              obscureText: _isHidden,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  hintText: "info@example.com",
                                                  labelText: "username/email",
                                                  suffixIcon: InkWell(
                                                    onTap: _usernameview,
                                                    child: Icon(_isHidden
                                                        ? Icons
                                                            .visibility_outlined
                                                        : Icons
                                                            .visibility_off_outlined),
                                                  )),
                                            ),
                                            const SizedBox(height: 25),
                                            TextField(
                                              obscureText: _isHiddenPassword,
                                              decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  hintText:
                                                      "password 6-8 karakter",
                                                  labelText: "password",
                                                  suffixIcon: InkWell(
                                                    onTap: _passwordview,
                                                    child: Icon(_isHiddenPassword
                                                        ? Icons.lock_outline
                                                        : Icons
                                                            .lock_open_outlined),
                                                  )),
                                            ),
                                            const SizedBox(height: 25),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 20,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFFD7D7D7),
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xFF050522),
                                                        width: 3),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Checkbox(
                                                      value: _isChecked,
                                                      checkColor: const Color(
                                                          0xFFD7D7D7),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _isChecked = value!;
                                                        });
                                                      }),
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                Text(
                                                  "Remember Me",
                                                  style: basicStyle.copyWith(
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0xFF050522)),
                                                ),
                                                const Spacer(),
                                                Text(
                                                  "forget password ?",
                                                  style: basicStyle.copyWith(
                                                      fontSize: 12,
                                                      color: const Color(
                                                          0xFF050522)),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 25),
                                            Container(
                                              height: 60,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  2 * 24,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return const DashboardScreen();
                                                  }));
                                                },
                                                child: Text(
                                                  "LOGIN",
                                                  style: basicStyle.copyWith(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white),
                                                ),
                                                style: ElevatedButton.styleFrom(
                                                    primary:
                                                        const Color(0xFFFF5656),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            // side: const BorderSide(
                                                            //     width: 3),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15))),
                                              ),
                                            ),
                                            const SizedBox(height: 25),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              });
                            });
                      }),
                ],
              ),
              const Text(
                "Trouble logging in?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ));
  }

  void _usernameview() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _passwordview() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }
}
