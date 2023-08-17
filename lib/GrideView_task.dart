import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gview extends StatefulWidget {
  const Gview({super.key});

  @override
  State<Gview> createState() => _GviewState();
}

class _GviewState extends State<Gview> {
  final List<dynamic> img = [
    "assets/Bentley Bacalar.png",
    "assets/Ferrari LaFerrari.png",
    "assets/SP12 EC Luxury.png",
    "assets/Jeep Gladiator.png",
    "assets/Jensen Interceptor.png",
    "assets/SP12 EC Luxury.png",
  ];
  final List<dynamic> text = [
    "Jensen Interceptor",
    "Ferrari Monza",
    "Jeep Gladiator",
    "Ferrari LaFerrari",
    "Bentley Bacalar",
    "Ferrari SP12 EC"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: 650,
                child: GridView.builder(
                  itemCount: img.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                    childAspectRatio: 0.97,
                    crossAxisSpacing: 4,
                  ),
                  itemBuilder: (BuildContext contex, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            child: Image.asset(img[index], fit: BoxFit.cover),
                          ),
                          Container(
                            // padding: EdgeInsets.only(top: 3),
                            child: Text(
                              text[index],
                              style:GoogleFonts.kanit(fontSize: 20),
                            ),
                          ),
                          Container(
                            child: Text("59Dollar/Per Day",style: GoogleFonts.robotoSlab(fontSize: 15),),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red,width: 1)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.charging_station,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.airline_seat_legroom_extra,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.adjust_rounded,
                                          size: 20,
                                        ),
                                      ),
                                      Container(
                                        child: Icon(
                                          Icons.car_crash_rounded,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      // SizedBox(
                                      //   width: 0.99,
                                      // ),
                                      Container(
                                        child: Text(
                                          "Petrol",
                                          style:GoogleFonts.oswald(
                                            fontSize: 10
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Seat 4",
                                          style: GoogleFonts.oswald(
                                              fontSize: 10
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Manual",
                                          style: GoogleFonts.oswald(
                                              fontSize: 10
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Luxury",
                                          style: GoogleFonts.oswald(
                                              fontSize: 10
                                          ),
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
