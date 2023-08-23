import 'package:flutter/material.dart';

class Test_lview extends StatefulWidget {
  const Test_lview({super.key});

  @override
  State<Test_lview> createState() => _Test_lviewState();
}

class _Test_lviewState extends State<Test_lview> {
  final List<dynamic> ItemList = [
    {
      "Icons": Icons.account_box_outlined,
      "Icons2": Icons.account_balance,
      "Test": "Task 1",
      "Test2": "Task 2",
      "Test3": "Task 3",
      "Test4": "Task 4",
      "Test5": "Task 5",
      "Test6": "Task 6",
      "Image": "assets/Ferrari Monza.jpg"
    },
    {
      "Icons": Icons.account_box,
      "Icons2": Icons.account_balance_wallet,
      "Test": "Task 7",
      "Test2": "Task 8",
      "Test3": "Task 9",
      "Test4": "Task 10",
      "Test5": "Task 11",
      "Test6": "Task 12",
      "Image": "assets/Ferrari LaFerrari.png"
    },
    {
      "Icons": Icons.account_circle_outlined,
      "Icons2": Icons.account_balance_wallet_outlined,
      "Test": "Task 13",
      "Test2": "Task 14",
      "Test3": "Task 15",
      "Test4": "Task 16",
      "Test5": "Task 17",
      "Test6": "Task 18",
      "Image": "assets/Bentley Bacalar.png"
    },
  ];
  List<dynamic> images = [
    {
      "Image_": "assets/Ferrari Monza.jpg",
      "Icons": Icons.favorite,
      "Test_": "Text 1",
      "Test__": "Text 2"
    },
    {
      "Image_": "assets/Ferrari LaFerrari.png",
      "Icons": Icons.favorite_border,
      "Test_": "Text 3",
      "Test__": "Text 4"
    },
    {
      "Image_": "assets/Bentley Bacalar.png",
      "Icons": Icons.favorite_border,
      "Test_": "Text 5",
      "Test__": "Text 6"
    },
    {
      "Image_": "assets/Jeep Gladiator.png",
      "Icons": Icons.favorite,
      "Test_": "Text 7",
      "Test__": "Text 8"
    },
    {
      "Image_": "assets/Jensen Interceptor.png",
      "Icons": Icons.favorite,
      "Test_": "Text 9",
      "Test__": "Text 10"
    },
    {
      "Image_": "assets/SP12 EC Luxury.png",
      "Icons": Icons.favorite_border,
      "Test_": "Text 11",
      "Test__": "Text 12"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  padding: EdgeInsets.all(5),
                  height: 332,
                  child: Flexible(
                    child: ListView.builder(
                        itemCount: 3,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext Context, int index) {
                          return Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 3, color: Colors.black),color: Colors.teal[300]),
                                  height: 100,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child:
                                                Icon(ItemList[index]["Icons"]),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            child:
                                                Icon(ItemList[index]["Icons2"]),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test2"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test3"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test4"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test5"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child:
                                                Text(ItemList[index]["Test6"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 5),
                                            height: 40,
                                            child: Image.asset(
                                                ItemList[index]["Image"]),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: 20,
                                            width: 75,
                                            child: FlatButton(
                                              child: Text(
                                                'LogIn',
                                              ),
                                              color: Colors.blueAccent,
                                              textColor: Colors.white,
                                              onPressed: () {},
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                // Divider(color: Colors.black, height: 3),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.yellow[300],
                height: 300,
                child: GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: images.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 5),
                    itemBuilder: (BuildContext Context, int index) {
                      return Container(
                        decoration: BoxDecoration(border: Border.all(width: 3),color: Colors.yellow[300]),
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              child: Image.asset(images[index]["Image_"]),
                            ),
                            Positioned(
                              right: 0,
                              child: Icon(images[index]["Icons"]),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Text(images[index]["Test__"]),
                            ),
                            Positioned(
                              bottom: 20,
                              child: Text(images[index]["Test_"]),
                            ),
                            Positioned(
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 20,
                                  width: 75,
                                  child: FlatButton(
                                    child: Text(
                                      'View',
                                    ),
                                    color: Colors.blueAccent,
                                    textColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ))
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
