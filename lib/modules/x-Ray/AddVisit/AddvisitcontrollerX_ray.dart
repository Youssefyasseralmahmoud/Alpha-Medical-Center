import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddvisitcontrollerX_ray extends GetxController
{
  var details ;
  var path ;
  var textEditingController = TextEditingController();
  var errorText = ''.obs;

  void validate(String value, String Function(String) validator) {
    errorText.value = validator(value);
  }
  var text =''.obs;
}