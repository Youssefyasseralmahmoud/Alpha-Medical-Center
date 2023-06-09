import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddVisitController extends GetxController
{
  var textEditingController = TextEditingController();
  var errorText = ''.obs;

  void validate(String value, String Function(String) validator) {
    errorText.value = validator(value);
  }


  var text =''.obs;




}