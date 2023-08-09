import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/doctor/Home/Doctor_home_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';
import 'package:project_after_update/core/function/handlingdata.dart';

class homeController extends GetxController{


  Doctor_home_services services = Doctor_home_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];

  var notificationCount = 0.obs;
  var isStoping = false.obs;

  void toggleStop() {
    isStoping.value = !isStoping.value;
  }

  void incrementNotificationCount() {
    notificationCount.value++;
  }
  get_allwaitingPatient() async {
    statusRequest = StatusRequest.loading;
    update();
    print("statuserequest now is ${statusRequest}");
    var response = await services.get_allwaitingPatient(4);

    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {

      data.clear();
      data.addAll(response['data']) ;
      print(response);
      print("doneWait");
    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "",
      );
    } else {
      Get.defaultDialog(title: "حدث خطأ ما", content: Text("حدث خطا ماwait"));
    }
    update();
  }
  @override
  void onInit() {
    get_allwaitingPatient();
    super.onInit();
  }

}