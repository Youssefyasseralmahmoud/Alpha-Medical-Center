import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/store/home_store/warehouseControllerstor.dart';

import '../../../static_colors/StaticColors.dart';
import 'PatientList.dart';
import 'PatientListcontroller.dart';
class Mylistray extends StatefulWidget {

  @override
  List createState() => List();
}

class List extends State<Mylistray> {
  bool _isFilterOn = true;

  @override
  Widget build(BuildContext context) {
    Get.put(PatientListController());
    return GetBuilder<PatientListController>(builder: (controller) {

      return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 120, bottom: 20),
          child: Text(
            '${controller.name}',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
       body:  Column(

    children: [
      SizedBox(
        height: 20,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            Transform.scale(
              scale: 1.5,
              child: Switch(
                value: _isFilterOn,
                onChanged: (value) {
                  setState(() {
                    _isFilterOn = value;
                  });
                  print(_isFilterOn);
                  if(_isFilterOn==false){
                    controller.changstatuslabbyidservic(0);}
                  else{
                    controller.changstatuslabbyidservic(1);
                  }
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: StaticColor.primarycolor,
                inactiveThumbColor: Colors.black12,
                inactiveTrackColor: Colors.black12,
              ),

            ),
            SizedBox(width: 15,),

            Text(
              'تحويل المرضى',
              style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.black45),
            ),

          ]),

      ListPatientsx_ray(controller: controller,),
    ],
  ),
    );});
  }



}
