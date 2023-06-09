import 'package:flutter/material.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details_controller.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
import 'package:get/get.dart';
class Patient_details extends StatelessWidget {
  const Patient_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Patient_details_controller controller =Get.put(Patient_details_controller());
    Patient_visits_controller patient_visits_controller =Get.put(Patient_visits_controller());
    return Scaffold(
      bottomNavigationBar:  GestureDetector(
        onTap: (){
          Get.toNamed("/patient_services");
        },
        child: Container(
          height: MediaQuery.of(context).size.height*0.08,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
            child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      "assets/images/assistance.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Text(
                    "خدمات المريض",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.black),
                  ),

                ],
              ),

        ),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: const BoxDecoration(
                    color: StaticColor.primarycolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
              Positioned(
                top: 140,
                left: 130,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Image.asset("assets/images/patient_profile.png"),
                ),
              ),
              Positioned(
                top: 10,
                left: 30,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: 80,
                  width: 90,
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(80),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10))),
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset("assets/images/document.png"),
                        flex: 2,
                      ),
                      const Expanded(
                          child: Text(
                        "السجل الطبي",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 140,
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed("/convert_request");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white.withAlpha(80),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/transmission.png"),
                          flex: 2,
                        ),
                        const Expanded(
                            child: Text(
                          "طلب تحويل",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: 250,
                child: GestureDetector(
                  onTap: ()async {
                    print("from patient details the id is ${controller.data_details[0]['id']}");
                    await patient_visits_controller.get_patient_visits(controller.data_details[0]['id']);
                    Get.toNamed("/patient_visits");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 80,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.white.withAlpha(80),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset("assets/images/information.png"),
                          flex: 2,
                        ),
                        const Expanded(
                            child: Text(
                          "سجل الزيارات",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "قسم الإستقبال",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      child: Image.asset(
                        "assets/images/patient_details.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text(
                      "بيانات المريض",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                const Divider(
                  height: 5,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
        GetBuilder<Patient_details_controller>(builder: (controller){
          return
            controller.data_details.isEmpty?Container(
              child: Center(
                child:Text("لا يوجد بيانات لعرضها",style: TextStyle(fontSize: 15,color: StaticColor.primarycolor),),
              ),
            ):
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            padding: const EdgeInsets.all(8),
            child:
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: StaticColor.thirdgrey.withAlpha(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text(controller.data_details[0]['FullName']),
                      Text(" : المريض",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.person,
                        color: StaticColor.primarycolor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: StaticColor.thirdgrey.withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("${controller.data_details[0]['IDPersonal']}  :"),
                      Text("الرقم الوطني ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.credit_card_rounded,
                        color: StaticColor.primarycolor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: StaticColor.thirdgrey.withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("${controller.data_details[0]['age']}  :"),
                      Text("العمر",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.person_pin_rounded,
                        color: StaticColor.primarycolor,
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: StaticColor.thirdgrey.withAlpha(30),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("${controller.data_details[0]['address']}  :"),
                      Text("العنوان",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.location_on,
                        color: StaticColor.primarycolor,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: StaticColor.thirdgrey.withAlpha(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:  [
                      Text("${controller.data_details[0]['phonenumber']}  :"),
                      Text("رقم الهاتف",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Icon(
                        Icons.phone,
                        color: StaticColor.primarycolor,
                      )
                    ],
                  ),

                ),
              ],
            ),
          );
        })

        ],
      ),
    );
  }
}

