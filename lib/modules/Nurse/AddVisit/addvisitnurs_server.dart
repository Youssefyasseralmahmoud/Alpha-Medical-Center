import 'dart:convert';

import 'package:project_after_update/config/server_config.dart';
import 'package:http/http.dart' as http;
class addvisit_nurse_server{

  Future<bool> upload() async{
    var headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
      'Authorization': 'Bearer 4|sOpfyceNO48Ixa4aFKedr3fMcKxe17y5A63NPkP1'
    };
    var request = http.Request('PUT', Uri.parse('https://ultimatebyteos.com/api/addPreviewResults'));
    request.bodyFields = {
      'id': '1',
      'Pressure': '18',
      'Heartbeat': '72',
      'BodyHeat': '39',
      'ClinicalStory': 'kwefqwdqwdwqaaasdaw',
      'ClinicalExamination': 'dawdasdwadawdawdawdawda'
    };
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }
  return true ;
  }}






