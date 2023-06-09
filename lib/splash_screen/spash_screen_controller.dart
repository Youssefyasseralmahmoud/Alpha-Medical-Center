import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';
class Splash_controller extends GetxController {
  late Secury_storage secury_storage;
  @override
  void onInit() async{
    secury_storage= new Secury_storage();
    checktoken();
    super.onInit();
  }
  Future<void> checktoken() async{

    String? admin_token = await secury_storage.read("admin_token");
    String? doctor_token = await secury_storage.read("doctor_token");
    //if doctor_token = await secur.read(" doctor_token");
    print("tooookken from splaaaash");
      print(admin_token);

    if(admin_token!= null){
      Get.offAllNamed('/homelab');
    }else if (doctor_token!=null){
      Get.offAllNamed("/HomeDoctor");
    }
    else{
      Get.offAllNamed('/login');
    }


  }


}
