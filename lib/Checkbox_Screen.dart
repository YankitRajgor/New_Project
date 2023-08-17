import 'package:flutter/material.dart';

class chekbox extends StatefulWidget {
  const chekbox({Key? key}) : super(key: key);

  @override
  State<chekbox> createState() => _chekboxState();
}

class _chekboxState extends State<chekbox> {
  bool _checkbox = false;
  bool _checkboxListTile = false;
  bool _checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "Check Box",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _checkbox = !_checkbox;
                  _checkboxListTile = !_checkboxListTile;
                  _checkbox3 = !_checkbox3;
                });
              },
              child: Row(
                children: [
                  Checkbox(
                    value: _checkbox,
                    onChanged: (value) {
                      setState(() {
                        _checkbox = !_checkbox;
                        _checkboxListTile = !_checkboxListTile;
                        _checkbox3 = !_checkbox3;
                      });
                    },
                  ),
                  Text('I am true now'),
                ],
              ),
            ),
            Divider(color: Colors.black, height: 2),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('I am true now'),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            ),
            Divider(color: Colors.black, height: 2),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('I am true now'),
              value: _checkbox3,
              onChanged: (value) {
                setState(() {
                  _checkbox3 = !_checkbox3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
