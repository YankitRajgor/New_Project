import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_box.dart';

class TextField_practice extends StatefulWidget {
  const TextField_practice({super.key});

  @override
  State<TextField_practice> createState() => _TextField_practiceState();
}

class _TextField_practiceState extends State<TextField_practice> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "Signup",
                      style: GoogleFonts.kanit(fontSize: 20),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      // child: Center(
                      child: Text(
                        "Already have Account?",
                        style: GoogleFonts.kanit(fontSize: 20),
                      ),
                      // ),
                    ),

                    Container(
                      child: TextButton(
                        onPressed: () {
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login_Box()));
                          }
                          ;
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.kanit(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              prefixIcon: Icon(Icons.manage_accounts),
                              border: OutlineInputBorder(),
                              hintText: "Username",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Username';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder(),
                              hintText: "Email",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_rounded),
                              hintText: "Password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock_rounded),
                              hintText: "Confirm Password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue),
                          height: 50,
                          width: 500,
                          child: TextButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login_Box()));
                              }
                              ;
                            },
                            child: Text(
                              "REGISTER NOW",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
