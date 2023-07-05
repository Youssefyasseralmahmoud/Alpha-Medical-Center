import 'dart:convert';

import 'package:project_after_update/config/server_config.dart';
import 'package:http/http.dart' as http;
class Add_visit_service {
   var message;
   var url = Uri.parse(Serverconfig.upload_Xray);
   Future<bool> upload(path) async{
     var headers = {
       'Accept': 'application/json',
       'Authorization': 'Bearer 64|mQOnybpHTsFJmZfv4Bf2tCFy11F7HWilOH4tQgpf'
     };
     var request = http.MultipartRequest('POST', Uri.parse('https://ultimatebyteos.com/api/addX_Rays'));
     request.fields.addAll({
       'ID_PatientVisitDetails': '3',
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
   }




}