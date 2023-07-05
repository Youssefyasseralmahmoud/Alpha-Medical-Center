import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'addvisitnurs_server.dart';
class AddVisitController extends GetxController
{
  var id;
  var idPatientRecord;
  var title;
  var referringPhysician;
  var pressure;
  var heartbeat;
  var bodyHeat;
  var clinicalStory;
  var clinicalExamination;
  dynamic comments;
  addvisit_nurse_server service = addvisit_nurse_server();
  var textEditingController = TextEditingController();
  var message ;
  var signinstatus =false;
  var errorText = ''.obs;

  void validate(String value, String Function(String) validator) {
    errorText.value = validator(value);
  }


  var text =''.obs;

  Future<void> onclickadd_visit() async {
    signinstatus = await service.upload();
  }
}
// To parse this JSON data, do
//
//     final doctorVisit = doctorVisitFromJson(jsonString);

