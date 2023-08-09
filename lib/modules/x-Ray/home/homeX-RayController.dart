import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/function/handlingdata.dart';
import '../../../secure_storage/secure_storage.dart';

import 'homeService.dart';
class  homex_rayController extends GetxController{

  homeService service = new homeService(Get.find());
  homeService services = homeService(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  late int index ;
  //late String id_patient;
  //List test_data=[];
  List data_details=[];
  var notificationCount = 0.obs;
  var isStoping = false.obs;

  void toggleStop() {
    isStoping.value = !isStoping.value;
  }

  void incrementNotificationCount() {
    notificationCount.value++;
  }
  get_typescion() async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await services.get_allTypeofsection();

    //test_data.addAll(response['data']);
    // print("test daaaataaa is ${test_data}");
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      data_details.clear();
      data_details.addAll(response['data']) ;
      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ${data_details.length}");

    }

    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد بيانات لعرضها",
      );
    }
    else{
      Get.defaultDialog(title: "حدث خطأ ما", content: Text("حدث خطا ما"));
    }
    update();
  }

  @override
  void onInit() {
    get_typescion();
    super.onInit();
  }

}