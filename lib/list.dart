import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: 100,
                width: 300,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    Container(
                      height: 50,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "List 1",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 70,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "List 2",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 90,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          "List 3",
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 110,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          "List 4",
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 130,
                      color: Colors.purple,
                      child: Center(
                        child: Text("List 5",style: TextStyle(fontSize: 50),),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
