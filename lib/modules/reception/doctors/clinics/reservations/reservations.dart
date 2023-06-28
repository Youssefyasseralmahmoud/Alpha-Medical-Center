import 'package:flutter/material.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/reservations/reservations_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
import 'package:get/get.dart';

class Reservations extends StatelessWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Reservations_controller controller = Get.put(Reservations_controller());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<Reservations_controller>(builder: (controller){
          return
          controller.statusRequest==StatusRequest.loading?
              Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),):
            Container(
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
                    Text(
                      "الحجوزات ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: Image.asset("assets/images/time-management.png"),
                        ),
                        Text(
                          "مركز ألفا الطبي",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                    Divider(
                      height: 2,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListView.builder(
                          itemCount: controller.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.all(8),
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin: const EdgeInsets.only(bottom: 20),
                              decoration: BoxDecoration(
                                color: StaticColor.thirdgrey.withAlpha(30),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            print(controller.data[index]['id']);
                                              Get.toNamed("/Edit_reservation",arguments: {
                                                "id" : controller.data[index]['id']
                                              });
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 50,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Image.asset(
                                                      "assets/images/pen.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                                const Expanded(child: Text("تعديل")),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          onTap: (){
                                            Get.defaultDialog(
                                              title: "هل تريد حذف الحجز ",
                                              content:  Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  GestureDetector(
                                                    onTap: (){
                                                      print(controller.data[index]['id']);
                                                      controller.delete_patient_reservation(controller.data[index]['id']);
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.all(5),
                                                      alignment: Alignment.center,
                                                      height: 50,
                                                      width: MediaQuery.of(context).size.width*0.3,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: StaticColor.primarycolor,
                                                      ),
                                                      child: Center(child: Text("نعم ",style: TextStyle(color: Colors.white,fontSize: 20),)),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: (){
                                                      Get.back();
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.all(5),
                                                      alignment: Alignment.center,
                                                      height: 50,
                                                      width: MediaQuery.of(context).size.width*0.3,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        color: StaticColor.primarycolor,
                                                      ),
                                                      child: Center(child: Text("لا ",style: TextStyle(color: Colors.white,fontSize: 20),)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 50,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Image.asset(
                                                      "assets/images/delete.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                                const Expanded(child: Text("حذف")),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Get.bottomSheet(
                                                Container(
                                                  decoration: const BoxDecoration(
                                                      borderRadius: BorderRadius.only(
                                                          topLeft: Radius.circular(20),
                                                          topRight:
                                                          Radius.circular(20)),
                                                      color: Colors.white),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets.only(
                                                            bottom: 5),
                                                        padding: EdgeInsets.all(8),
                                                        width: MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                        height: 60,
                                                        color: StaticColor.thirdgrey
                                                            .withAlpha(30),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                          children: [
                                                            const Text(" سعيد :"),
                                                            const Text(" المريض",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                            Container(
                                                              height: 50,
                                                              width: 50,
                                                              child: Image.asset(
                                                                  "assets/images/patient.png"),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      // Container(
                                                      //   margin: const EdgeInsets.only(
                                                      //       bottom: 5),
                                                      //   padding: EdgeInsets.all(8),
                                                      //   width: MediaQuery.of(context)
                                                      //       .size
                                                      //       .width,
                                                      //   height: 60,
                                                      //   color: StaticColor.thirdgrey
                                                      //       .withAlpha(30),
                                                      //   child: Row(
                                                      //     mainAxisAlignment:
                                                      //     MainAxisAlignment.end,
                                                      //     children: [
                                                      //       const Text(" 8:29 :"),
                                                      //       const Text(" توقيت الحجز",
                                                      //           style: TextStyle(
                                                      //               fontWeight:
                                                      //               FontWeight
                                                      //                   .bold)),
                                                      //       Container(
                                                      //         height: 50,
                                                      //         width: 50,
                                                      //         child: Image.asset(
                                                      //             "assets/images/time-management.png"),
                                                      //       )
                                                      //     ],
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                )
                                            );
                                          },
                                          child: Container(
                                            height: 60,
                                            width: 50,
                                            child: Column(
                                              children: [
                                                Expanded(
                                                    flex: 2,
                                                    child: Image.asset(
                                                      "assets/images/service_details.png",
                                                      fit: BoxFit.fill,
                                                    )),
                                                const Expanded(
                                                    child: Text("التفاصيل")),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child:  Text(
                                      "${controller.data[index]['BookingDate']}",
                                      style: TextStyle(
                                          color: StaticColor.primarycolor),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ]),
          );
        })

      )
    );
  }
}
