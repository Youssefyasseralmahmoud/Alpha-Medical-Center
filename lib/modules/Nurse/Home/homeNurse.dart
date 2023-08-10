import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:project_after_update/core/function/validinput.dart';
import 'package:project_after_update/modules/Nurse/AddVisit/AddVisitController.dart';
import 'package:project_after_update/modules/Nurse/Home/PatientList.dart';
import 'package:project_after_update/modules/Nurse/Home/homeNurseController.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/PersonalInformation/PersonalinfrmationController.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class homeNurse extends StatelessWidget {


  @override
    homeNurseController controller= Get.put(homeNurseController());
  PersonalinfrmationController personalinfrmationController = Get.put(PersonalinfrmationController());
 // AddVisitController addVisitController =Get.put<AddVisitController>(AddVisitController());
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        SafeArea(

            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          size: 40,
                          color: Color(0xff9bb4fd),
                        ),
                        color:Color(0xff9bb4fd)
                        ,
                        onPressed: () {

                        },
                      ),
                    ),
                    Obx(() =>
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 30.0, top: 30.0, bottom: 7.0,),
                          child: Container(
                            width: 55,
                            height: 55,
                            //color:Color(0xFF649EFF) ,
                            decoration: BoxDecoration(
                              color:  Color(0xff9bb4fd),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Stack(
                                children: [
                                  Icon(Icons.notifications,
                                      size: 38, color: Color(0xFFFFFFFF)),
                                  if (controller.notificationCount.value > 0)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(6),
                                        ),
                                        constraints: BoxConstraints(
                                          minWidth: 15,
                                          minHeight: 15,
                                        ),
                                        child: Text(
                                          '${controller.notificationCount.value}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              onPressed: () {
                                controller.incrementNotificationCount();
                                print(controller.notificationCount.value);
                              },
                            ),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35, bottom: 3, top: 10),
                  child: Text("الممرض",
                    style: TextStyle(fontFamily: 'Arial', fontSize: 32, color: Color(
                        0xff36414d),),
                  ),),
                Padding(
                  padding: const EdgeInsets.only(right: 38, bottom: 14, top: 3),
                  child: Text("مركز ألفا الطبي",
                    style: TextStyle(fontFamily: 'Arial',
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: Colors.black38),
                  ),),

                Padding(
                  padding: const EdgeInsets.only(right: 0, bottom:5 , top: 12),
                  child: Center(
                    child: Text("خدمات اليوم", style: TextStyle(fontFamily: 'Arial',
                      fontSize: 25,
                      fontWeight: FontWeight.w100,
                      color:Colors.black87 ,
                    ),
                    ),
                  ),
                ),
                ListPatients(),

              ],
            )));
  }
}
