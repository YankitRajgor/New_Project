import 'package:demo/row%20column.dart';
import 'package:demo/task_one.dart';
import 'package:demo/task_two.dart';
import 'package:flutter/material.dart';
import 'Alert Dailog.dart';
import 'Checkbox_Screen.dart';
import 'Drawer Screen.dart';
import 'Drawer_practice.dart';
import 'GView.dart';
import 'Gride view Builder.dart';
import 'GrideView.dart';
import 'GrideView_task.dart';
import 'Lisiview_Test.dart';
import 'Listview_Builder.dart';
import 'ModalBottomSheet.dart';
import 'RadioButton.dart';
import 'Radiobutton_Screen.dart';
import 'Slider_Screen.dart';
import 'Sneck&tost Task.dart';
import 'Stack and Position.dart';
import 'Stack&Position Task.dart';
import 'Stack_Position_Task.dart';
import 'Stack_Task.dart';
import 'Task_two_repeat.dart';
import 'TextField_Task.dart';
import 'TextField_Signup.dart';
import 'Textfield Screen.dart';
import 'Toast.dart';
import 'SnackToast.dart';
import 'Vertical_ListView.dart';
import 'demofile.dart';
import 'list.dart';
import 'listview_TaskTwo.dart';
import 'listview_task.dart';
import 'login_box.dart';
import 'lview_task.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Model_Bottem_Sheet(),
    );
  }
}
