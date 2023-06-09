import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/Modules/x-Ray/warehose/products.dart';

class warehouseController extends GetxController{
  var products = [
    Product(name: 'علبة كحول',quantity: 30),
    Product(name: 'كيس قطن',quantity: 20),
    Product(name: 'أبر',quantity: 20),
    Product(name: 'شاش',quantity: 20),
    Product(name: 'أدوية',quantity: 20),
    Product(name: 'كحول',quantity: 20),
    Product(name: 'علبة',quantity: 20),

  ].obs;



  // void updateQuantity(int index, String value) {
  //   products[index].quantity = int.parse(value);
  // }
  void errors(int quantity,int index) {
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