import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:json_table/json_table.dart';
import 'package:seascanapp/pages/bottomNav.dart';

//import 'pages/bottomNav.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drangey Vision and Bleeding Wheel System",
      home:
      Scaffold(

        //Header
        appBar: AppBar(
          title: Text("Drangey Vision and Bleeding Wheel System"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.headset),
              onPressed: () => null,
            ),
          ],

        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                    child: Column(
                      children: <Widget>[
                        Material(
                          child: Padding(padding: EdgeInsets.all(8.0),
                            //child: Image.asset("assets/images/Ska3x.png", height:90, width:98),
                          ),
                        ),
                        Text('Skaginn3X', style: TextStyle(color: Colors.white, fontSize: 20.0),)
                      ],
                    )
                ),
                margin: EdgeInsets.all(2.0),
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

        //Body
        body: Column(
          children: <Widget> [
            Row(
              children: <Widget> [
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
                      GestureDetector(
                        onTap: (){
                          print("Start");
                        },
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: new Text("Start",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.white)),
                          color: Colors.blue,
                          width: 100.0,
                          height: 50.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Reset");
                        },
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: new Text("Reset",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.white)),
                          color: Colors.blue,
                          width: 100.0,
                          height: 50.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Auto");
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15.0,5.0,5.0,0),
                          alignment: Alignment.center,
                          child: new Text("Auto",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.white)),
                          color: Colors.blue,
                          width: 100.0,
                          height: 50.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Manual");
                        },
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: new Text("Manual",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.white)),
                          color: Colors.blue,
                          width: 130.0,
                          height: 50.0,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          print("Clean");
                        },
                        child: Container(
                          margin: EdgeInsets.all(5.0),
                          alignment: Alignment.center,
                          child: new Text("Clean",
                              style: Theme.of(context)
                                  .textTheme
                                  .display1
                                  .copyWith(color: Colors.white)),
                          color: Colors.blue,
                          width: 130.0,
                          height: 50.0,
                        ),
                      ),
                      /*
                            Container(
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

                            Container(
                            alignment: Alignment.center,
                            child: new Text("Start",
                                style: Theme.of(context)
                                    .textTheme
                                    .display1
                                    .copyWith(color: Colors.white)),
                            color: Colors.blue,
                            width: 100.0,
                            height: 50.0,

                            ),
                            Container(
                              alignment: Alignment.center,
                              child: new Text("Reset",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(color: Colors.white)),
                              color: Colors.blue,
                              width: 100.0,
                              height: 50.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: new Text("Auto",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(color: Colors.white)),
                              color: Colors.blue,
                              width: 100.0,
                              height: 50.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: new Text("Manual",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(color: Colors.white)),
                              color: Colors.blue,
                              width: 130.0,
                              height: 50.0,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: new Text("Clean",
                                  style: Theme.of(context)
                                      .textTheme
                                      .display1
                                      .copyWith(color: Colors.white)),
                              color: Colors.blue,
                              width: 130.0,
                              height: 50.0,
                            ),*/


                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6.0),
                  color: Colors.white,
                  width: 400.0,
                  height: 500.0,
                  child: new Center(
                    child: new Column(
                      children: <Widget> [
                        new TextField(
                          maxLength: 10,

                          decoration: new InputDecoration(
                            icon: new Icon(Icons.text_format),
                            hintText: "Type type",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        //Bottom

        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: <Widget>[
              BottomNav()

              /*Container(
                height: 140.0,
                width: 1100,
                color: Colors.white,
                child: JsonTable(
                  json,
                  //paginationRowCount: 1,
                  showColumnToggle: false,
                    tableHeaderBuilder: (String header) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                        decoration: BoxDecoration(border: Border.all(width: 0.5),color: Colors.grey[300]),
                        child: Text(
                          header,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.display1.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 14.0,
                              color: Colors.black87
                          ),
                        ),
                      );
                    },
                  tableCellBuilder: (value) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                      decoration: BoxDecoration(border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.display1.copyWith(fontSize: 16.0, color: Colors.grey[900]),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0,50.0, 0, 50.0),
                height: 50.0,
                width: 100,
                color: Colors.black12,
                 child:
                  RaisedButton(
                    child: Text( 'ACK', textAlign: TextAlign.center, style:  TextStyle(fontSize: 20.0),),
                    onPressed: () => null,
                  ),
              ),*/
            ],
          ),

        ),
      ),
    );
  }
}

class RootPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Djöfull er þetta leiðinlegt!"),
      ),
    );
  }
}

