import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/patient_visits_details_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Patient_visits_details extends StatelessWidget {
  const Patient_visits_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Patient_visits_details_controller controller =Get.put(Patient_visits_details_controller());
    return Scaffold(
      body: Container(
        child: ListView(children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 10),
                          prefixIcon: const Icon(Icons.search),
                          hintText: "البحث",
                          hintStyle: const TextStyle(fontSize: 20),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)),
                          filled: true,
                          fillColor: Colors.grey[200]),
                    )),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: StaticColor.primarycolor,
                  ),
                  width: 60,
                  height: 55,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_active_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "تفاصيل الزيارة",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "مركز ألفا الطبي",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "اسم المريض",
                  style: TextStyle(fontSize: 20,),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['Title']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "الضغط",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['Pressure']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "النبض ",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['Heartbeat']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "الحرارة",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['BodyHeat']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "القصة السريرية",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['ClinicalStory']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "الفحص السريري",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['ClinicalExamination']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                const Text(
                  "الملاحظات",
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: StaticColor.thirdgrey,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child:  Text(
                    "${controller.data[0]['Comments'
                        '']}",
                    style: TextStyle(
                        fontSize: 15, color: StaticColor.primarycolor),
                    textAlign: TextAlign.end,
                  ),
                ),
                const Divider(
                  height: 2,
                  color: Colors.black45,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.toNamed("/Xray_in_visit_details");
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height*0.07,
                        width:100,
                        decoration: BoxDecoration(
                            color: StaticColor.primarycolor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(height:55,width:55,child: Image.asset("assets/images/x-rays.png",)),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Get.toNamed("/Lab_result_in_visit_details");
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        height: MediaQuery.of(context).size.height*0.07,
                        width:100,
                        decoration: BoxDecoration(
                            color: StaticColor.primarycolor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Container(height:55,width:55,child: Image.asset("assets/images/lab_req.png",)),
                      ),
                    ),
                  ],
                ),
              ],

            ),
          ),
        ]),
      ),
    );
  }
}
