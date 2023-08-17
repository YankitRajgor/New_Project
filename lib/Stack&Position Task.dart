import 'package:flutter/material.dart';

class StackTask extends StatefulWidget {
  const StackTask({super.key});

  @override
  State<StackTask> createState() => _StackTaskState();
}

class _StackTaskState extends State<StackTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Stack & Position"),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      height: 500,
                      width: 400,
                      color: Colors.blue[300],
                    ),
                    Positioned(
                      top: 20,
                      bottom: 20,
                      right: 20,
                      left: 20,
                      child: Container(
                        height: 450,
                        width: 350,
                        color: Colors.yellow[300],
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 21,
                      child: Icon(Icons.cancel,size: 30,),
                    ),
                    // Positioned(
                    //   top: 40,
                    //   bottom: 40,
                    //   right: 40,
                    //   left: 40,
                    //   child: Container(
                    //     height: 450,
                    //     width: 350,
                    //     color: Colors.blueGrey[300],
                    //   ),
                    // ),
                    // Positioned(
                    //   top: 80,
                    //   bottom: 80,
                    //   right: 80,
                    //   left: 80,
                    //   child: Container(
                    //     height: 450,
                    //     width: 350,
                    //     color: Colors.white60,
                    //   ),
                    // ),
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
