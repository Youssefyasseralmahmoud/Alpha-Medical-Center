import 'dart:convert';

import 'package:project_after_update/config/server_config.dart';
import 'package:http/http.dart' as http;
import 'package:project_after_update/models/recerptions/patient_details_model.dart';

class PersonalInformationService {

  Future<PatientDetailsModel> getPatientDetails(var id) async {
    print("ssssssssss");
    var headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer 4|sOpfyceNO48Ixa4aFKedr3fMcKxe17y5A63NPkP1'
    };
    //'https://ultimatebyteos.com/api/getPatientInformation?Key=ID Personal&Value=$id'
    var url =
        'https://ultimatebyteos.com/api/getPatientInformation?Key=ID Personal&Value=02545164598162';
    var response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      print(jsonBody);
      return PatientDetailsModel.fromJson(jsonBody);
    } else {
      throw Exception('Failed to load patient details');
    }
  }
}