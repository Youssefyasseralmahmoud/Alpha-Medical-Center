import 'package:flutter/material.dart';
import 'package:get/get.dart';
class patientVisitRecordController extends GetxController{
  var is_doctortransfer = true.obs;
  var showDetails = false.obs;
  void toggleDetails() {
    showDetails.value = !showDetails.value;
  }

  var ashaa =true.obs ;
  var makhbar=true.obs;
  var doctor=true.obs;

}