import 'package:flutter/material.dart';

class lview extends StatefulWidget {
  const lview({super.key});

  @override
  State<lview> createState() => _lviewState();
}

class _lviewState extends State<lview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(
            child: Text(
              "Horizontal & Vertical ListView",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
          leading: Icon(
            Icons.menu_outlined,
            size: 40,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.arrow_right,
              size: 50,
              color: Colors.black,
            )
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (Context, index) => Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.all(20),
                        child: Center(
                          child: Text("Card $index"),
                        ),
                        color: Colors.blue[500],
                      ),
                    ),
                ),
                Flexible(
                  child: ListView.builder(
                    itemCount: 15,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      child: ListTile(
                        title: Text(
                          "List $index",
                          style: TextStyle(color: Colors.brown, fontSize: 20),
                        ),
                      ),
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
