import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'TextField_Signup.dart';

class Login_Box extends StatefulWidget {
  const Login_Box({super.key});

  @override
  State<Login_Box> createState() => _Login_BoxState();
}

class _Login_BoxState extends State<Login_Box> {
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Text(
                    "Login",
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
                      "Don't have an account?",
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
                                  builder: (context) => TextField_practice()));
                        }
                        ;
                      },
                      child: Text(
                        "Sign Up",
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
                            hintText: "Username or Email",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Detail';
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
                                      builder: (context) =>
                                          TextField_practice()));
                            }
                            ;
                          },
                          child: Text(
                            "LOGIN",
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
    );
  }
}
