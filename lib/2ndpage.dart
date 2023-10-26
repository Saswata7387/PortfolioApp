

import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.backspace),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => MyApp()));
            },
          )
        ],
        title: const Center(
            child: Text(
          'EXTRAS',
          style: TextStyle(letterSpacing: 14),
        )),
      ),
      backgroundColor: Color.fromARGB(56, 244, 240, 240),
      body: Container(
        child: const Column(
          children: [
            Divider(
              indent: 40,
              endIndent: 40,
              height: 95,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
            Text(
              'SKILLS:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color.fromARGB(255, 255, 244, 39),
              ),
            ),SizedBox(height: 45),
            Text('C Programming (Basics) , Python , Development of Web Applications using Flask(python) , Basic HTML, Also capable of creating Basic Flutter application',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 255, 255, 253),),
        ),SizedBox(height: 70),
        Text('Projects made(Achievements):',
        style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 255, 244, 39),
        ), ),
        Text('-->   Simple Blogging site in Flask using Python, Using HTML and CSS, Along with SQLITE db implementation.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 255, 255, 253),)
        ),SizedBox(height: 60),
        Text('-->   Simple Portfolio App using Flask SDK.',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 255, 255, 253),)
        )
        ],
        ),
      ),
    );
  }
}
