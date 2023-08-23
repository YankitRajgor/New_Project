import 'package:flutter/material.dart';

class Listview_Builder extends StatefulWidget {
  const Listview_Builder({super.key});

  @override
  State<Listview_Builder> createState() => _Listview_BuilderState();
}

class _Listview_BuilderState extends State<Listview_Builder> {
  final List<dynamic> entries = ['1', '2', '3', '4'];
  final List<dynamic> colorCodes = [
    Colors.red,
    Colors.blueGrey,
    Colors.green,
    Colors.blue,
  ];
  final List<dynamic> Imagelist = [
    "assets/download.jpg",
    "assets/excel ptp.jpg",
    "assets/map.png",
    "assets/pavlova2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 100,
                      color: colorCodes[index],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'List ${entries[index]}',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  color: Colors.green,
                                  height: 70,
                                  width: 70,
                                  child: Image.asset(
                                    Imagelist[index],
                                    fit: BoxFit.cover,
                                  )),
                            ],
                          ),
                          Icon(Icons.exit_to_app),
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
