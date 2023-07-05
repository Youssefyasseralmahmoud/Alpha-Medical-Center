import 'dart:convert';

import 'package:project_after_update/config/server_config.dart';
import 'package:http/http.dart' as http;
class uploadX_ray{
  var message;

  var url = Uri.parse(Serverconfig.upload_Xray);

  Future<bool> upload(path) async{
    print('ddddddddddddddddddd');
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer 4|sOpfyceNO48Ixa4aFKedr3fMcKxe17y5A63NPkP1'
    };
    var request = http.MultipartRequest('POST', Uri.parse('https://ultimatebyteos.com/api/addX_Rays'));
    request.fields.addAll({
      'ID_PatientVisitDetails': '1',
      'Details': 'awdasdawdasdawdaawd'
    });
    request.files.add(await http.MultipartFile.fromPath('IMG', path));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    }
    else {
      print(response.reasonPhrase);
    }

return true;
  }}






