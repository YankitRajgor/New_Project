import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert_Dailoug_Screen extends StatefulWidget {
  const Alert_Dailoug_Screen({super.key});

  @override
  State<Alert_Dailoug_Screen> createState() => _Alert_Dailoug_ScreenState();
}

class _Alert_Dailoug_ScreenState extends State<Alert_Dailoug_Screen> {
  _displaydailouge(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Varification"),
            content: Container(
              child: Text("Already Varification ?"),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No",style: GoogleFonts.kanit(fontSize: 20),),
                // style:,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Yes",style: GoogleFonts.kanit(fontSize: 20),),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Alert Dialog")),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              width: 500,
              height: 50,
              color: Colors.teal[100],
              child: TextButton(
                onPressed: () {
                  _displaydailouge(context);
                },
                child: Text(
                  "Click Here",
                  style: GoogleFonts.kanit(fontSize: 20, color: Colors.black),
                ),
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
