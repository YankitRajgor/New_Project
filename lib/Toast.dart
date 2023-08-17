import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toast_Screeen extends StatefulWidget {
  const Toast_Screeen({super.key});

  @override
  State<Toast_Screeen> createState() => _Toast_ScreeenState();
}

class _Toast_ScreeenState extends State<Toast_Screeen> {

  void showToast() {
    Fluttertoast.showToast(
      msg:'Hey',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.grey,
        textColor: Colors.black
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Toast Screen"),
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                ElevatedButton(onPressed: ()=>showToast(), child: Text("Show Tost"))
              ],
            ),
          ),
        ));
  }
}

