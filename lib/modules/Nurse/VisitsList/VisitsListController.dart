import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/VisitListSsevices.dart';

import 'package:project_after_update/secure_storage/secure_storage.dart';
class VisitsListController extends GetxController{
  RxList<bool> showDetails = List.filled(100, false).obs;

  toggleDetails(int index) {
    showDetails[index] = !showDetails[index];
    update();

  }
  var doctor = false.obs;

  VisitListSsevices services = VisitListSsevices(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  List test_data=[];
  get_patient_visits(int id) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_patient_visits(id);
    test_data.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data.isNotEmpty) {
      data.clear();
      data.addAll(response['data']) ;
      print("this is patient viiiiisiiiits");
      print(data);
      //Get.toNamed("/Ambulance_patients_visits");
    }   else if(test_data.isEmpty) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد زيارات لعرضها",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد زيارات لعرضها",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
  go_to_edit(int index ){
    Get.toNamed("/EditVisitDetailsNures",arguments: {
      "Pressure" :data[index]['Pressure'].toString(),
      "Heartbeat" : data[index]['Heartbeat'].toString(),
      "BodyHeat" : data[index]['BodyHeat'].toString(),
      "ClinicalStory" : data[index]['ClinicalStory'].toString(),
      "ClinicalExamination" : data[index]['ClinicalExamination'].toString(),
      "Comments" : data[index]['Comments'].toString(),
      "id" : data[index]['id']

    });
  }



}