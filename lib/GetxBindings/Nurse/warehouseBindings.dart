import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/Nurse/warehouse/warehouseController.dart';
class warehouseBindinds implements Bindings
{
  @override
  void dependencies() {
    Get.put<warehouseController>(warehouseController());
  }

}