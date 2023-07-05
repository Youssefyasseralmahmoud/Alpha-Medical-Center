import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Lab/Warehose/products.dart';



class warehouseControllerstor extends GetxController{
  var products = [

    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),
    Product(name: 'كحول',quantity: 000),
    Product(name: 'علبة',quantity: 20),
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
  void errors(int quantity,int index) {
    print("ddddddddddddddddddddddddddddddddddddddddddddddddddddddd");
    print(quantity);
    print(products[index].quantity);
    if (quantity > products[index].quantity) {
      Get.snackbar(
        'خطأ !!',
        'الكمية المدخلة أكبر من الكمية المتوافرة',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }

  }

  var selectedValue = 'Option 1'.obs;
  var dropdownValues = ['Option 1', 'Option 2', 'Option 3'].obs;

}