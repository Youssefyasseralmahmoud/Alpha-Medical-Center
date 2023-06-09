import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/reception/center_services/center_services.dart';
import 'package:project_after_update/modules/reception/home/home_reception.dart';
import 'package:project_after_update/modules/reception/patient/patient.dart';

class Home_screen_reception_controller extends GetxController{
  int currentpage=0;
  List<Widget> listpage=[
    const Home_reception(),
    const Patient(),
    const Center_services(),
    Text("payment"),

  ];
  changepage(int i){
    currentpage=i;
    update();
  }
}