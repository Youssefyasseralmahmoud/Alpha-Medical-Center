import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VisitsListControllerX_Ray extends GetxController{
  var showDetails = false.obs;

  void toggleDetails() {
    showDetails.value = !showDetails.value;
  }

  RxDouble imageSize = 100.0.obs;

  void changeImageSize(double scale) {
    imageSize.value = 100 * scale.clamp(0.5, 2.0);
  }

  void resetImageSize() {
    imageSize.value = 100.0;
  }

  var ashaa =true.obs ;



}