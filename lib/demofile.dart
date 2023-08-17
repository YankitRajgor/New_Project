import 'package:flutter/material.dart';

class abc extends StatelessWidget {
  const abc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.search),
          ],
          // elevation: 50,
          // centerTitle: true,
          title: Text(
            "Telegram",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        body: Container(
          height: 200,
          color: Colors.red,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(7), topLeft: Radius.circular(7)),
                    border: Border.all(color: Colors.black, width: 5)),
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 5)),
                child: Text(
                  "Hello World",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class hbv extends StatefulWidget {
  const hbv({super.key});

  @override
  State<hbv> createState() => _hbvState();
}

class _hbvState extends State<hbv> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
