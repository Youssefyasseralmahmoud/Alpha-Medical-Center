import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiselect/multiselect.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/wating_in_clinics/wating_in_clinics_controller.dart';
import 'package:project_after_update/modules/reception/doctors/doctors_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Wating_in_clinics extends StatelessWidget {
  const Wating_in_clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Doctors_controller doctor_controller =
        Get.put<Doctors_controller>(Doctors_controller());
    wating_in_clincis_controller controller = Get.put(wating_in_clincis_controller());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: StaticColor.primarycolor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/stopwatch.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/doctor.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: GetBuilder<wating_in_clincis_controller>(builder: (controller){
            return
            controller.statusRequest==StatusRequest.loading?
                Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),):
              TabBarView(
              children: [
                Container(
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            "قسم الإستقبال",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "دور الإنتظار/ عيادة الأطفال/ مركز ألفا الطبي",
                                style: TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          const Divider(
                            height: 10,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: StaticColor.thirdgrey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const ListTile(
                                  title: Text(
                                    " المريض : ${"سامر أحمد"} ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: Text(" الطبيب : ب"),
                                  trailing: Text(
                                    "2023-4-22 8:00 pm",
                                    style: TextStyle(
                                        color: StaticColor.primarycolor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            );
                          }),
                    )
                  ]),
                ),
                /////////////الأطباء
                Container(
                  child: ListView(children: [
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            "أطباء العيادة",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "مركز ألفا الطبي",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Divider(
                            height: 10,
                            color: Colors.black45,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.7,
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.data.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                print("test id from wating ${controller.data[index]['id']}");
                                Get.toNamed("/doctors_details",arguments:{
                                  "id_doctor" : controller.data[index]['id']
                                }


                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                  color: StaticColor.thirdgrey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ListTile(
                                  title:  Text(
                                    "${controller.data[index]['username']}اسم الطبيب : ",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  subtitle: const Text("حالة الطبيب  : متواجد"),
                                     trailing: IconButton(
                                    icon: const Icon(Icons.edit_calendar_outlined),
                                  onPressed: () {
                                    Get.bottomSheet(
                                      Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(30),
                                                topRight: Radius.circular(30)),
                                            color: Colors.white),
                                        child: Column(
                                          children: [
                                            const Text(
                                              "تعديل المواعيد",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.45,
                                              padding: const EdgeInsets.all(8),
                                              child: Card(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    ListTile(
                                                      trailing: const Text(
                                                          "أيام العمل"),
                                                      subtitle:
                                                          DropDownMultiSelect(
                                                        options:
                                                        doctor_controller.options,
                                                        whenEmpty:
                                                            "إختر أيام العمل",
                                                        onChanged: (value) {
                                                          doctor_controller
                                                              .selectedoptionlist
                                                              .value = value;
                                                          doctor_controller
                                                              .selectedoption
                                                              .value = "";
                                                          doctor_controller
                                                              .selectedoptionlist
                                                              .value
                                                              .forEach((element) {
                                                            doctor_controller
                                                                .selectedoption
                                                                .value = doctor_controller
                                                                    .selectedoption
                                                                    .value +
                                                                " " +
                                                                element;
                                                          });
                                                        },
                                                        selectedValues: doctor_controller
                                                            .selectedoptionlist
                                                            .value,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    ListTile(
                                                      trailing: const Text(
                                                          "ساعات العمل"),
                                                      subtitle:
                                                          DropDownMultiSelect(
                                                        options: doctor_controller
                                                            .options_houer,
                                                        whenEmpty:
                                                            "إختر ساعات العمل",
                                                        onChanged: (value) {
                                                          doctor_controller
                                                              .selectedoptionlist_houer
                                                              .value = value;
                                                          doctor_controller
                                                              .selectedoption_houer
                                                              .value = "";
                                                          doctor_controller
                                                              .selectedoptionlist_houer
                                                              .value
                                                              .forEach((element) {
                                                            doctor_controller
                                                                .selectedoption_houer
                                                                .value = doctor_controller
                                                                    .selectedoption_houer
                                                                    .value +
                                                                " " +
                                                                element;
                                                          });
                                                        },
                                                        selectedValues: doctor_controller
                                                            .selectedoptionlist_houer
                                                            .value,
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          const EdgeInsets.all(5),
                                                      alignment: Alignment.center,
                                                      height: 50,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10),
                                                        color: StaticColor
                                                            .primarycolor,
                                                      ),
                                                      child: const Text(
                                                        "تأكيد",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                    color: StaticColor.primarycolor,
                                   ),
                                ),
                              ),
                            );
                          }),
                    )
                  ]
                  ),
                ),
              ],
            );
          })
        ),
      ),
    );
  }
}
