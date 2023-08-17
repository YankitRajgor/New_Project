import 'package:flutter/material.dart';

class Vertical_lview extends StatefulWidget {
  const Vertical_lview({super.key});

  @override
  State<Vertical_lview> createState() => _Vertical_lviewState();
}

class _Vertical_lviewState extends State<Vertical_lview> {
  final List<dynamic> Img = [
    "assets/pavlova2.png",
    "assets/pavlova2.png",
    "assets/pavlova2.png",
    "assets/pavlova2.png",
    "assets/pavlova2.png",
    "assets/pavlova2.png",
  ];
  final List<dynamic> text = [
    "Abhilasha",
    "Painvinta",
    "Surya",
    "Surya",
    "Surya",
    "Surya",
  ];
  final List<dynamic> text_two = [
    "Botad",
    "Gadhada",
    "Barwala",
    "Botad",
    "Botad",
    "Botad",
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: 380,
                child: ListView.builder(
                  itemCount: Img.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                color: Colors.grey),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(
                                    Img[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // SizedBox(
                                //   width: 50,
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        text[index],
                                        style: TextStyle(fontSize: 30),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      child: Text(text_two[index]),
                                    ),
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
