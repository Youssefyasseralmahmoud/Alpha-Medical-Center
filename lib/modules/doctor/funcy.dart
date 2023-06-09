import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/Modules/doctor/Home/Home.dart';
import 'package:project_after_update/Modules/doctor/bookings/DoctorBooking.dart';

import 'NavigationController.dart';
import 'package:fancy_bar/fancy_bar.dart';

class FancyNavBarPage extends StatelessWidget {
  FancyNavBarPage({Key? key}) : super(key: key);

  BottomNavigationController bottomNavigationController =
  Get.put(BottomNavigationController());

  final screens = [
    Home(),
    //DoctorBooking(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
        index: bottomNavigationController.selectedIndex.value,
        children: screens,
      )),
      bottomNavigationBar: FancyBottomBar(
        items: [
          FancyItem(
            textColor: Color(0xff9bb4fd),
            title: "المنزل",
            icon: Icon(Icons.home,color: Color(0xff9bb4fd)),
          ),
          FancyItem(
            textColor: Color(0xff9bb4fd),
            title: "المواعيد",
            icon: Icon(Icons.calendar_month_outlined,color: Color(0xff9bb4fd)),

          ),

        ],
        type: FancyType.FancyV2,
        onItemSelected: (index) {
          bottomNavigationController.changeIndex(index);
        },
        selectedIndex: bottomNavigationController.selectedIndex.value,
      ),
    );
  }
}