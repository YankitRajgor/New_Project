import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class ToastPrectice extends StatefulWidget {
  const ToastPrectice({super.key});

  @override
  State<ToastPrectice> createState() => _ToastPrecticeState();
}

class _ToastPrecticeState extends State<ToastPrectice> {
  void showToast() {
    Fluttertoast.showToast(
      // fontSize: 20,
        timeInSecForIosWeb: 10,
        msg: 'This is Toast',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Text(
              'Toast And Snack',
              style: GoogleFonts.kanit(fontSize: 20,color: Colors.black),

            ),
          ),
          actions: [
            Icon(
              Icons.keyboard_arrow_right,
              size: 50,
              color: Colors.black,
            )
          ],
          leading: Icon(
            Icons.keyboard_arrow_left_outlined,
            size: 50,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Text(
                    'Toast',
                    style: GoogleFonts.bebasNeue(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {
                    showToast();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Text(
                    'Snack',
                    style: GoogleFonts.bebasNeue(fontSize: 20,color: Colors.black),
                  ),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: Text('A SnackBar'),
                      action: SnackBarAction(
                        label: 'undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
