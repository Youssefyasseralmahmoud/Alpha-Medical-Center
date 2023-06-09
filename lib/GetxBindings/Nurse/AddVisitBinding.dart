import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/Nurse/AddVisit/AddVisitController.dart';
class AddVisitBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<AddVisitController>(AddVisitController());
  }

}