/*import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:global_configuration/global_configuration.dart';
import 'dart:convert';

Future<String> exampleApi(String orgid) async {
//  print(GlobalConfiguration().getString("modbus"));
  http.Response response = await http.get(
//    Uri.encodeFull(GlobalConfiguration().getString("modbus")+"/api/values/"+orgid),
Uri.encodeFull("https://localhost:44349/api/values/"+orgid)
  );
//  print("response.statusCode="+response.statusCode.toString());
  print("Respone ${response.body.toString()}");
  //Returns 'true' or 'false' as a String
//  await new Future.delayed(const Duration(seconds: 1));
  return response.body;
//  return '{"uiNafli":123,"uiEr":"í alheimsvanda","uiLok":1,"szError":null}';//response.body;
}

//Future<String> ApiPost(String json) async {
Future<String> ApiPost(Map<String, dynamic> json2) async {
  http.Response response = await http.get(
//    Uri.encodeFull(GlobalConfiguration().getString("modbus")+"/api/values/"+orgid),
      Uri.encodeFull("https://localhost:44349/api/values/"+json.encode(json2))
  );
  return response.body;
}*/