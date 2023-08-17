import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Radio_Button extends StatefulWidget {
  const Radio_Button({super.key});

  @override
  State<Radio_Button> createState() => _Radio_ButtonState();
}

class _Radio_ButtonState extends State<Radio_Button> {
  String? Payment;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "Select Your Payment Method",
                style: GoogleFonts.kanit(fontSize: 25,color: Colors.teal),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child:  Column(
                children: [
                  Container(
                    color: Colors.red,
                    child: Row(
                      children: [
                        RadioListTile(
                            title: Image.asset(
                              "assets/visa2.png",
                              width: 50,
                              height: 50,
                              fit: BoxFit.contain,
                            ),
                            value: 'visa',
                            groupValue: Payment,
                            onChanged: (value) {
                              setState(
                                    () {
                                  Payment = value.toString();
                                },
                              );
                            }),
                        Text("visa")
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  RadioListTile(
                      title: Image.asset(
                        "assets/mastercard.jpg",
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      value: 'MasterCard',
                      groupValue: Payment,
                      onChanged: (value) {
                        setState(
                              () {
                            Payment = value.toString();
                          },
                        );
                      }),
                  SizedBox(height: 10,),
                  RadioListTile(
                      title: Image.asset(
                        "assets/amzonpay.png",
                        width: 50,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                      value: 'AmzonPay',
                      groupValue: Payment,
                      onChanged: (value) {
                        setState(
                              () {
                            Payment = value.toString();
                          },
                        );
                      }),
                  RadioListTile(
                      title: Image.asset(
                        "assets/upi.png",
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      value: 'Upi',
                      groupValue: Payment,
                      onChanged: (value) {
                        setState(
                              () {
                            Payment = value.toString();
                          },
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
