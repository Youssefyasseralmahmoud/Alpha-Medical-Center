import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/doctor/Home/home_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';
class homeController extends GetxController{
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  Home_services services = new Home_services(Get.find());
  var notificationCount = 0.obs;
  var isStoping = false.obs;

  void toggleStop() {
    isStoping.value = !isStoping.value;
  }

  void incrementNotificationCount() {
    notificationCount.value++;
  }

  logout() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.logout();
    // test_data.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      await Get.snackbar(
        "تم",
        "تم تسجيل الخروج بنجاح",
      );
      secury_storage.delete();
      Get.toNamed("/login");

    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تنبيه",
        "لم تتم عملية تسجيل الخروج   ",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
}