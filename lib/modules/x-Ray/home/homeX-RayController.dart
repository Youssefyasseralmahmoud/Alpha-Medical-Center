import 'package:flutter/material.dart';
import 'package:get/get.dart';
class  homex_rayController extends GetxController{




  var notificationCount = 0.obs;
  var isStoping = false.obs;

  void toggleStop() {
    isStoping.value = !isStoping.value;
  }

  void incrementNotificationCount() {
    notificationCount.value++;
  }


}