
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients.dart';
import 'package:project_after_update/modules/Ambulance/request_consumable/request_consumable.dart';

class Home_screen_ambulance_controller extends GetxController{
  int currentpage=0;
  List<Widget> listpage=[
    const Ambulance_patients(),
    Text("تسجيل حالة"),
   const Request_consumable(),
    Text("الاعدادات"),

  ];
  changepage(int i){
    currentpage=i;
    update();
  }
}