import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import '../globals.dart' as globals;

class SimpleTable extends StatefulWidget {
  @override
  _SimpleTableState createState() => _SimpleTableState();
}

class _SimpleTableState extends State<SimpleTable>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: <Widget>[
          Row(
            children: <Widget>
            [
              Container(
                margin: const EdgeInsets.all(6.0),
                color: Colors.grey,
                width: 850.0,
                height: 500.0,
                child: new Row(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    GestureDetector(
                      onTap: (){
                      print("STOP");
                    },
                     child: Container(
                            margin: EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                          child: new Text("STOP",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .copyWith(color: Colors.white)),
                          color: Colors.red,
                          width: 100.0,
                          height: 50.0,
                        ),
                    ),
                ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(3.0),
                color: Colors.orangeAccent,
                width: 100.0,
                height: 500.0,
              ),
            ],
          ),
        ],
      )
    );
  }
}

Positioned mainButton() {
  return new Positioned(
    left: 30,
    top: 30,
    child: Row(
      children: [
        Container(
          height: 50,
          width: 100,
          color: Colors.orange,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
            child: Text('ACK', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),),
            onPressed: () => null,
          ),
        ),
      ],
    ),
  );
}
