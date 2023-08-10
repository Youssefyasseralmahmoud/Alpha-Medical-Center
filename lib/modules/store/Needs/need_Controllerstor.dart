import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_store/products_store.dart';







class need_controller extends GetxController{
  var products = [

    Product_store(name: 'كحول',quantity: 000,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 20),
    Product_store(name: 'علبة',quantity: 20,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 50),
    Product_store(name: 'كحول',quantity: 000,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 20),
    Product_store(name: 'علبة',quantity: 20,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 50),
    Product_store(name: 'كحول',quantity: 000,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 20),
    Product_store(name: 'علبة',quantity: 20,production_date : '2/2/2023',expiry_date: '3/3/2023',min: 50),


  ].obs;



  // void updateQuantity(int index, String value) {
  //   products[index].quantity = int.parse(value);
  // }
  void order(int quantity,int index) {
    print("ddddddddddddddddddddddddddddddddddddddddddddddddddddddd");
    print(quantity);
    print(products[index].quantity);




  }

  var selectedValue = 'Option 1'.obs;
  var dropdownValues = ['Option 1', 'Option 2', 'Option 3'].obs;

}