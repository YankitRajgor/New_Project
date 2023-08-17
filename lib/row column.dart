import 'package:flutter/material.dart';

import 'demofile.dart';

class Column_screen extends StatefulWidget {
  const Column_screen({Key? key}) : super(key: key);

  @override
  State<Column_screen> createState() => _Column_screenState();
}

class _Column_screenState extends State<Column_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Test")),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.green,
                    child: Text(
                      'Hello',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    // alignment: Alignment.topRight,
                    height: 300,
                    width: 300,
                    child: Image.asset("assets/peakpx.jpg"),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.red,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        child: Text("One"),
                      ),
                      Container(
                          height: 100,
                          width: 100,
                          child: Image.asset(
                            "assets/peakpx.jpg",
                            fit: BoxFit.cover,
                          )),
                      Container(child: Icon(Icons.circle_rounded,size: 35,color: Colors.red,),),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> abc()));
                      }, child: Text("Next Screen"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
