import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/Nurse/Nures_patiient_services_list/Nures_patiient_services_list_controller.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/PersonalInformation/PersonalinfrmationController.dart';
import '../VisitsListController.dart';

class PersonalInformation extends StatelessWidget {
  int height = Get.height.toInt();
  int width = Get.width.toInt();

  // VisitsListController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 330.0,top: 50),
            child: IconButton(icon:Icon( Icons.arrow_back_rounded,size: 35,color: Colors.black54),
              onPressed: (){Get.offNamed('/patientVisitRecord');},),
          ),
          CircleAvatar(
            backgroundColor: Color(0xff9bb4fd),
            radius: 70,
            child: Image.asset("assets/images/pic.png"),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Text('البيانات الشخصية',style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 25,
              color: Colors.black38,
            ),),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.5,
            padding: const EdgeInsets.all(8),
            child: ListView(

              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 7,left: 7,right: 7),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Color.fromARGB(100, 189, 189, 189).withAlpha(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("محمد سعيد :"),
                      Text(" المريض",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person,
                          color:   Color(0xff9bb4fd),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Color.fromARGB(100, 189, 189, 189).withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 7,left: 7,right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(" 5423456789 :"),
                      Text("رقم الوطني ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.credit_card_rounded,
                          color:    Color(0xff9bb4fd),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Color.fromARGB(100, 189, 189, 189).withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 7,left: 7,right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("40:"),
                      Text("العمر",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.person_pin_rounded,
                          color:   Color(0xff9bb4fd),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Color.fromARGB(100, 189, 189, 189).withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 5,left: 7,right: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("دمشق:"),
                      Text("العنوان",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.location_on,
                          color:    Color(0xff9bb4fd),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5,left: 7,right: 7),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Color.fromARGB(100, 189, 189, 189).withAlpha(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text("093476155:"),
                      Text("رقم الهاتف",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.phone,
                          color:  Color(0xff9bb4fd),
                        ),
                      )
                    ],
                  ),

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
