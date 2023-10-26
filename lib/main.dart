
import 'package:flutter/material.dart';
import 'test.dart';
import '2ndpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
Widget build(BuildContext context){
   return  MaterialApp(
    theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        /* dark theme settings */
      ),
      themeMode: ThemeMode.dark, 
    debugShowCheckedModeBanner: false,
   home: Mainpage()
    );
  }
}