import 'package:flutter/material.dart';

class GrideView extends StatefulWidget {
  const GrideView({super.key});

  @override
  State<GrideView> createState() => _GrideViewState();
}

class _GrideViewState extends State<GrideView> {
  final List<dynamic> icon = [
    Icons.home,
    Icons.contacts_rounded,
    Icons.location_on,
    Icons.phone,
    Icons.camera_alt_outlined,
    Icons.settings,
    Icons.image,
    Icons.wifi,
    Icons.bluetooth,
  ];
  final List<dynamic> text = [
    "Home",
    "Contact",
    "Location",
    "Phone",
    "Camera",
    "Setting",
    "Gallery",
    "WiFi",
    "Bluetooth",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 500,
                child: GridView.builder(
                  itemCount: icon.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // padding: EdgeInsets.all(30),
                      padding: EdgeInsets.only(top: 40),
                      color: Colors.yellow[300],
                      child: Column(
                        children: [
                          Container(
                            child: Icon(icon[index],color: Colors.teal,),
                          ),
                          Container(
                            child: Text(text[index],style: TextStyle(color: Colors.teal),),
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
