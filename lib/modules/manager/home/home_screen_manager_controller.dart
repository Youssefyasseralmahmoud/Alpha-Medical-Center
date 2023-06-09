import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/manager/employee/employee.dart';
import 'package:project_after_update/modules/manager/home/home_manager.dart';
import 'package:project_after_update/modules/manager/join_request/join_request.dart';
import 'package:project_after_update/modules/manager/patients/patients_in_managment.dart';

class Home_screen_manager_controller extends GetxController {
  int currentpage = 0;
  List<Widget> listpage = [
    const Home_manager(),
    const Join_request(),
    const Employee(),
   const Patients_in_managment(),
  ];
  changepage(int i) {
    currentpage = i;
    update();
  }
}
