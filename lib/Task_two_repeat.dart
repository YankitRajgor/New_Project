import 'package:flutter/material.dart';

class repeat extends StatefulWidget {
  const repeat({super.key});

  @override
  State<repeat> createState() => _repeatState();
}

class _repeatState extends State<repeat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/download.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Dr.Stefeni Albert",
                              style: TextStyle(
                                fontSize: 30,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            child: Text(
                              "Heart Speailist",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Icon(
                                    Icons.message,
                                    color: Colors.lightBlue,
                                    size: 30,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.call,
                                    size: 30,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.videocam,
                                    size: 30,
                                    color: Colors.green,
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
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "About",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Dr.stefeni albert is a cardiologist in nashville & affiliated with multiple hospitals in the area he received his medical degree from duke university school of medicine and has been in practice for more than 20 years.",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 400,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // width: 400,
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.location_on_sharp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Address",
                                            style: TextStyle(
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "House #2,road #5,green road",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Dhanmondi, dhaka,",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Bangladesh",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 200,
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.timer_sharp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "Daily Practict",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Monday-Friday",
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Open till 7 pm",
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
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
                      ),
                      Container(
                        width: 150,
                        height: 160,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "assets/excel ptp.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "Activity",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.newspaper),
                          ),
                          Container(
                            width: 100,
                            child: Text(
                              "List Of Schedule",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.newspaper),
                          ),
                          Container(
                            width: 100,
                            child: Text(
                              "Docter's Daily Post",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
