import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:json_table/json_table.dart';

//import 'pages/bottomNav.dart';
//import 'pages/Body1.dart';
import 'pages/flexBox.dart';
//import 'pages/ListBox.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "",
      home: RootPage(),
    );
  }
}

class RootPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drangey Vision and Bleeding Wheel System"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.volume_mute),
            onPressed: () => null,
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/Ska3x.png'),
                  fit: BoxFit.cover
                ),
              ),

              /*child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                        child: Padding(padding: EdgeInsets.all(0.0),
                          child: Image.asset('assets/images/skaBla.png', height:135, width:150),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  )
              ),*/
              margin: EdgeInsets.all(0.0),
            ),

            ListTile(
                
                leading: Icon(Icons.all_inclusive),
                title: Text('Bleeding Wheel 1', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ");
                  Navigator.pop(context);
                }
            ),
            ListTile(
                leading: Icon(Icons.all_inclusive),
                title : Text('Bleeding Wheel 2', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ hæ");
                }
            ),
            ListTile(
                leading: Icon(Icons.all_inclusive),
                title : Text('Bleeding Wheel 3', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ hæ");
                }
            ),
            ListTile(
                leading: Icon(Icons.all_inclusive),
                title : Text('Bleeding Wheel 4', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ hæ");
                }
            ),
            ListTile(
                leading: Icon(Icons.all_inclusive),
                title : Text('Bleeding Wheel 5', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ hæ");
                }
            ),
            ListTile(
                leading: Icon(Icons.all_inclusive),
                title : Text('Water Valves', style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500,),),
                onTap: () {
                  print("hæ hæ hæ");
                }
            ),
          ],
        ),
      ),
      body: new Stack(
        children: <Widget>[
          FlexBox(),
          //ListBox(),
          //SimpleTable(),
          //BottomNav(),
        ],
      ),

    );
  }
}


