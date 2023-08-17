import 'package:flutter/material.dart';

class Stack_Task extends StatefulWidget {
  const Stack_Task({super.key});

  @override
  State<Stack_Task> createState() => _Stack_TaskState();
}

class _Stack_TaskState extends State<Stack_Task> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        height: 350,
                        width: 400,
                      ),
                      Positioned(
                        child: Container(
                          height: 300,
                          width: 400,
                          child: Image.asset(
                            "assets/City2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 10,
                          bottom: 25,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            height: 50,
                            width: 370,
                          )),
                      Positioned(
                        height: 40,
                        width: 350,
                        // bottom: 170,
                        bottom: 30,
                        left: 20,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(6)),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              prefixIcon: Icon(Icons.search),
                              hintText: "Search",
                            ),
                          ),
                        ),
                      ),
                    ],
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
