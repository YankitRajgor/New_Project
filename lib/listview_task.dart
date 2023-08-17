import 'package:flutter/material.dart';

class list_view_task extends StatefulWidget {
  const list_view_task({super.key});

  @override
  State<list_view_task> createState() => _list_view_taskState();
}

class _list_view_taskState extends State<list_view_task> {
  final List<dynamic> list = [
    "item# 1",
    "item# 2",
    "item# 3",
    "item# 4",
    "item# 5",
    "item# 6",
    "item# 7",
    "item# 8",
    "item# 9",
    "item# 10",
    "item# 11",
    "item# 12",
    "item# 13",
    "item# 14",
    "item# 15",
  ];
  final List<dynamic> submit = [
    "Subtitle-1",
    "Subtitle-2",
    "Subtitle-3",
    "Subtitle-4",
    "Subtitle-5",
    "Subtitle-6",
    "Subtitle-7",
    "Subtitle-8",
    "Subtitle-9",
    "Subtitle-10",
    "Subtitle-11",
    "Subtitle-12",
    "Subtitle-13",
    "Subtitle-14",
    "Subtitle-15",
  ];
  final List<dynamic> colorcodes = [
    500,
    500,
    500,
    400,
    400,
    400,
    300,
    300,
    300,
    200,
    200,
    200,
    100,
    100,
    100
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey,
          title: Text(
            "Example",
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
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
          child: Column(
            children: [
              Container(
                height: 410,
                child: ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 10),
                        color: Colors.yellow[colorcodes[index]],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    list[index],
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.blue),
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Container(
                                  child: Text(
                                    submit[index],
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            )
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
