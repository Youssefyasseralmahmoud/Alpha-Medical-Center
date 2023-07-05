import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/Modules/x-Ray/warehose/products.dart';

import 'order.dart';

class departmentorderController extends GetxController{
  var orders = [
    order(department_name: 'قسم الاستقبال '),
    order(department_name: 'قسم الاسعاف '),
    order(department_name: 'قسم الاشعة '),
    order(department_name: 'قسم المخبر '),


  ].obs;


  var selectedValue = 'Option 1'.obs;
  var dropdownValues = ['Option 1', 'Option 2', 'Option 3'].obs;

}