import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class snacktoast extends StatefulWidget {
  const snacktoast({Key? key}) : super(key: key);

  @override
  State<snacktoast> createState() => _snacktoastState();
}

class _snacktoastState extends State<snacktoast> {
  void showToast() {
    Fluttertoast.showToast(
        msg: 'This is toast notification',
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM_LEFT,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.yellow,
        textColor: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Toast",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Show Toast"),
                onPressed: () {
                  showToast();
                },
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.black),
                onPressed: ()   {
                  final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {},
                    ),
                  );
                  //ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Show SnackBar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
