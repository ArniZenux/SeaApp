import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:json_table/json_table.dart';

class BottomNav extends StatefulWidget{
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>{

  final String jsonSample =
      '['
      '{"name":"Shyam","email":"shyam23@gmail.com","age":28,"income":"30Rs","country":"India","area":"abc","day":"Monday","month":"april"},'
      '{"name":"John","email":"john@gmail.com","age":33,"income":"15Rs","country":"India","area":"abc","day":"Monday","month":"april"},'
      '{"name":"John","email":"john@gmail.com","age":33,"income":"15Rs","country":"India","area":"abc","day":"Monday","month":"april"}'
      ']';
  bool toggle = true;

  @override
  Widget build(BuildContext context){
    //var json = jsonDecode(jsonSample);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            Container(
              height: 140.0,
              width: 1100.0,
              color: Colors.orange,
            ),
          ],
        ),
      )
    );
  }
}



/*
child: new Row(
children: <Widget>[
Container(
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
),
],
),
*/
