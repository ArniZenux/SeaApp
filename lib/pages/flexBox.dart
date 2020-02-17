import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_table/json_table_column.dart';
import 'package:json_table/json_table.dart';
import 'dart:convert';

class FlexBox extends StatefulWidget {
  @override
  _FlexBox createState() => _FlexBox();
}

class _FlexBox extends State<FlexBox>{

  final String jsonSample='[{"name":"Ram","email":"ram@gmail.com"}]';

  @override
  Widget build(BuildContext context) {
    var data = jsonDecode(jsonSample);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          MainButton(),
          PictureArea(),
          ListBox(),
        ],
      ),
    );
  }
}

List<bool> _list = [true, false, true, false];

Positioned MainButton() {
  return new Positioned(
    left: 40,
    top: 30,
    child: Row(
      children: [
        Container(
          height: 50,
          width: 100,
          //color: Colors.white,
          margin: EdgeInsets.all(5.0),
          child: new RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)
              , side: BorderSide(color: Colors.red)
              ),
              color: Colors.red,
              //color: _list[i] ? Colors.red : Colors.green,
              child: Text('STOP', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),),
              onPressed: () {
              //  setState( (){
               //   _list[i] = !_list[i];
               // });
                print("Stop");
              },
            ),
          ),
         
         Container(
          height: 50,
          width: 100,
          //color: Colors.white,
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
          // color: Colors.white,
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
          //color: Colors.white,
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
          //color: Colors.white,
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
         // color: Colors.white,
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
}

Positioned PictureArea() {
    return new Positioned(
      left: 60,
      top: 110,
      child: Column(
        children: [
          Container(
            height: 380,
            width: 600,
            decoration: new BoxDecoration(
                image: new DecorationImage(image: new NetworkImage("https://assets-global.website-files.com/5d08d81095e837862a81250a/5d08d81095e8373536812770_Unit-002.jpg"),
                    fit: BoxFit.cover)
            ),
          ),
        ],
      ),
    );
}

Positioned ListBox() {
    var columns = [
      JsonTableColumn("label", label: ""),
      JsonTableColumn("data", label: ""),
    ];

    String jsonLastFish= '[{"label":"Weight [g]",         "data":"0"},'
                          '{"label":"Length [mm]",        "data": "0"},'
                          '{"label":"Bloody head",        "data":"No"},'
                          '{"label":"Species",            "data":"Undefined"},'
                          '{"label":"ID",                 "data":"0"},'
                          '{"label":"Computing time [ms]","data":"0"},'
                          '{"label":"Assigned gate",      "data":"No gate"},'
                          '{"label":"Cod xl limit [gr]",  "data": "1"},'
                          '{"label":"Haddock xl limit [gr]","data":"1"},'
                          '{"label":"Pollock xl limit [gr]","data":"1"},'
                          '{"label":"Cod large limit [gr]","data":"0"},'
                          '{"label":"Haddock large limit [gr]","data":"0"},'
                          '{"label":"Pollock large limit [gr]","data":"0"}]';
    var data = json.decode(jsonLastFish);

    return new Positioned(
      left: 800,
      top: 30,
      child: Container(
        height: 500,
        width: 400,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
        ),
        child: Column(
          children: <Widget> [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 200,
                  child: 
                    Center(child:
                      Text('Overview', style: TextStyle(fontSize: 33))
                    ),
                ),
              ]
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  height: 400,
                  width: 300,
                      child: JsonTable(
                        data,
                        columns: columns,
                        tableHeaderBuilder: (String header) {
                          return Container(
                            height: 0,
                            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                            decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.grey[300]),
                            child: Text(
                              header,
                              textAlign: TextAlign.center,
                             
                            ),
                          );
                        },
                        tableCellBuilder: (value) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                            decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
                            child: Text(
                              value,
                              textAlign: TextAlign.start,
                              ), 
                          );
                        },
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
}