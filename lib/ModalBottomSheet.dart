import 'package:flutter/material.dart';

class Model_Bottem_Sheet extends StatefulWidget {
  const Model_Bottem_Sheet({super.key});

  @override
  State<Model_Bottem_Sheet> createState() => _Model_Bottem_SheetState();
}

class _Model_Bottem_SheetState extends State<Model_Bottem_Sheet> {


  _showmodelbottomsheet(BuildContext context) async{
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.yellow[300],
      anchorPoint: Offset(100, 10),
      elevation: 10,
      shape: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      barrierColor: Colors.transparent,
      constraints: BoxConstraints(
        minWidth: 50,
        maxHeight: 400,
      ),
      builder: (BuildContext context) {
        return Container(
          height: 400,
          width: double.maxFinite,
          // color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text("Close")),

            ],
          ),
        );
      },
    );

}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          "Model Bottom Sheet",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showmodelbottomsheet(context);
          },
          child: Text(
            "ShowModelBottomSheet",
          ),
        ),
      ),
    ));
  }
}
