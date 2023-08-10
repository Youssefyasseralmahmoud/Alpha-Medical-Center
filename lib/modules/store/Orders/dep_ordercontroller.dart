



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../Nurse/warehouse/products.dart';

class dep_ordercontroller extends GetxController{
  var order = [

    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),
    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),
    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),
    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),

  ].obs;



  // void updateQuantity(int index, String value) {
  //   products[index].quantity = int.parse(value);
  // }



  var selectedValue = 'Option 1'.obs;
  var dropdownValues = ['Option 1', 'Option 2', 'Option 3'].obs;

}