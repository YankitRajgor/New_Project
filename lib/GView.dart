import 'package:flutter/material.dart';

class G_View extends StatefulWidget {
  const G_View({super.key});

  @override
  State<G_View> createState() => _G_ViewState();
}

class _G_ViewState extends State<G_View> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
