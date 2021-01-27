import 'package:flutter/material.dart';
import 'package:flutter_botton_navigation/mesage.dart';
import 'package:flutter_botton_navigation/person.dart';
import 'package:flutter_botton_navigation/search.dart';

import 'call.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var _currentIndex = 0;
  final pages = [
    Message(),
    Call(),
    Search(),
    Person()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
        currentIndex: _currentIndex,
          items: [

        BottomNavigationBarItem(
          backgroundColor: Colors.deepOrange,
            icon: Icon(Icons.message),
          title: Text("Message"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.deepOrange,
          icon: Icon(Icons.call),
          title: Text("Call"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.deepOrange,
          icon: Icon(Icons.search),
          title: Text("Search"),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.deepOrange,
          icon: Icon(Icons.person),
          title: Text("Person"),
        ),
      ],
          onTap: (index){

          setState(() {
            _currentIndex = index;
          });
    },
      ),

      body: pages[_currentIndex],
    );
  }
}


