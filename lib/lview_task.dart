import 'package:flutter/material.dart';

class vertical_horizontal extends StatefulWidget {
  const vertical_horizontal({super.key});

  @override
  State<vertical_horizontal> createState() => _vertical_horizontalState();
}

class _vertical_horizontalState extends State<vertical_horizontal> {
  final List<dynamic> image = [
    // Image(image: )
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text(
              "vertical_horizontal",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          leading: Icon(
            Icons.menu_sharp,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.arrow_forward_ios,
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
                    itemBuilder: (Context, image) => Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(20),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/download.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      // child: Center(
                      //   child: Text("Card $index"),
                      // ),
                      color: Colors.green,
                    ),
                  ),
                ),
                Flexible(
                    child: ListView.builder(
                  itemCount: 15,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (Contex, index) => Container(
                    child: ListTile(
                      title: Text(
                        "List $index",
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
