import 'package:get/get.dart';
import 'package:flutter/material.dart';


class navigationBar_financial_controller extends GetxController {
  var selectedIndex = 0.obs;
  var textValue = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }

  void increaseVlaue() {
    textValue.value++;
  }
}