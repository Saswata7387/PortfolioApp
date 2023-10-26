import 'package:flutter/material.dart';
import 'package:flutter_application_2/2ndpage.dart';

void main() => runApp(Mainpage());

class Mainpage extends StatefulWidget {
  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  bool _iconbool = false;

  final IconData _iconLight = Icons.wb_sunny;
  final IconData _iconDark = Icons.nights_stay;

  final ThemeData _lighttheme = ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light,);

  final ThemeData _darkTheme = ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _iconbool ? _darkTheme : _lighttheme,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'PORTFOLIO',
                style: TextStyle(letterSpacing: 4),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconbool = !_iconbool;
                  });
                },
                icon: Icon(_iconbool ? _iconDark : _iconLight),
              )
            ],
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MyWidget()),
                );
              },
            ),
          ),
          body: Container(
            margin: EdgeInsetsDirectional.only(top: 50.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/profilepic.jpeg'),
                    radius: 70,
                  ),
                ),
                Divider(
                  indent: 40,
                  endIndent: 40,
                  height: 95,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text(
                  'Name:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Saswata Bhattacharya',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                   
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Profession:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
              
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Student/Junior developer',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                   
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Bio:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Student at SRM University, First year, pursuing CSE.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

