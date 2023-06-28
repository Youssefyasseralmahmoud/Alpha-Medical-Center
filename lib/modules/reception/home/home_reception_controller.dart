

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/fcmconfig.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/manager/home/home_manager_services.dart';
import 'package:project_after_update/modules/reception/home/home_reception_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Home_reception_controller extends GetxController {
  Home_reception_services services = Home_reception_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage1 = new Secury_storage();
  List data=[];
  List test_data=[];




  get_all_section() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_section();
    test_data.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data.isNotEmpty) {
      data.clear();
      data.addAll(response['data']) ;
      print("response from get all section controller");
      print(data);
    }
    else if(test_data.isEmpty) {
      await Get.snackbar(
        "تنبيه",
        "لا يوجد أقسام لعرضهم",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد أقسام لعرضهم",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
  @override
  void onInit() {
    get_all_section();
    Fcmconfig();
    requestpermissionNotification();

    super.onInit();
  }
}