import 'package:flutter/material.dart';

class Column_Design extends StatefulWidget {
  const Column_Design({super.key});

  @override
  State<Column_Design> createState() => _Column_DesignState();
}

class _Column_DesignState extends State<Column_Design> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Card(
        color: Colors.green,
        elevation: 5,
        shadowColor: Colors.red,
        shape: Border(
            bottom: BorderSide(color: Colors.red),
            top: BorderSide(color: Colors.red, width: 2)),
        child: Container(
          height: 330,
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.blueGrey,
            width: 5,
          )),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "Strawberry Pavlova",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 110,
                        child: Text(
                          "Pavlova is a meringue based dessert named after the russian ballerine anna pavlova . pavlova featues a crisp crust and soft,light inside,topped with fruit and whipped cream.",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 110,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 10,
                                ),
                              ],
                            ),
                            Container(
                              child: Text(
                                "170 Review",
                                style: TextStyle(fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.kitchen,
                                      color: Colors.green[500],
                                      size: 10,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "PREP:",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "25min",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.timer,
                                      color: Colors.green[500],
                                      size: 10,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "COOK:",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "1 hr",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.restaurant_sharp,
                                      color: Colors.green[500],
                                      size: 10,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "FEEDS:",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "4-6",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 250,
                        width: 180,
                        child: Image.asset(
                          "assets/pavlova2.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
