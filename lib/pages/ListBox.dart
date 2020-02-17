import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListBox extends StatefulWidget {
  @override
  _ListBox createState() => _ListBox();
}

class _ListBox extends State<ListBox>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MainButton(),
          ListBox(),
        ]
      ),
    );
  }
}

Positioned MainButton() {
  return new Positioned(
    left: 140,
    top: 130,
    child: Row(
      children: [
        Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.red)
              ),
              color: Colors.red,
              child: Text('STOP', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),),
              onPressed: () {
                print("Stop");
              },
            ),
          ),
         
         Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.grey)
            ),
            child: Text('Start', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0), ),
            onPressed: () {
              print("Start");
            },
          ),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.grey)
            ),
            child: Text('Reset', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              print("Reset");
            },
          ),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.grey)
            ),
            child: Text('Auto', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              print("Auto");
            },
          ),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.grey)
            ),
            child: Text('Manual', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              print("Manual");
            },
          ),
        ),
        Container(
          height: 50,
          width: 100,
          color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.grey)
            ),
            child: Text('Clean', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0),),
            onPressed: () {
              print("Clean");
            },
          ),
        ),
      ],
    ),
  );

  Positioned ListBox() {
     return new Positioned(
       
      left: 140,
      top: 130,
      Container(
        height:50,
        width:50,
        color: Colors.red,
      ),
  }
}
