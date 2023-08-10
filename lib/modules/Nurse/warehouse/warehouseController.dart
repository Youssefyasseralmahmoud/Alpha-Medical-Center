import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/Nurse/warehouse/products.dart';
class Nurse_warehouseController extends GetxController{
  var products = [
    Product(name: 'علبة كحول',quantity: 30),
    Product(name: 'كيس قطن',quantity: 20),
    Product(name: 'أبر',quantity: 10),
    Product(name: 'شاش',quantity: 70),
    Product(name: 'أدوية',quantity: 20),
    Product(name: 'كحول',quantity: 80),
    Product(name: 'علبة',quantity: 100),

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

  var selectedValue = ' '.obs;
  var dropdownValues = ['كحول', 'قطن', 'أبر' , 'شاش',' '].obs;

}