import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/clinics_in_managment_controller.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_center_services/laboratory_center_services_controller.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_service_type/laboratory_service/laboratory_service_controller.dart';
import 'package:project_after_update/modules/reception/xray_in_reception/xray_service_type/xray_service/xray_service_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Xray_service extends StatelessWidget {
  const Xray_service({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Xray_service_controller controller=Get.put(Xray_service_controller());
    return Scaffold(
        body:
        GetBuilder<Xray_service_controller>(builder: (controller){
          return
            controller.statusRequest==StatusRequest.loading ?
            Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),)
                :
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
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        " الخدمات المتوافرة",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "مركز ألفا الطبي / قسم الإستقبال / الأشعة",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.black45,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        child: GridView.builder(
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 20),
                          shrinkWrap: true,
                          itemCount: controller.data.length,
                          //controller.data[0]['center_service'].length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.bottomSheet(
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Text("${controller.data[index]['Details']}"),
                                              //  Text("${controller.data[0]['center_service'][index]['Details']}"),
                                              Text(" : التفاصيل  ",style: TextStyle(fontWeight: FontWeight.bold),),
                                              SizedBox(width: 5,),

                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                );
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    color: StaticColor.primarycolor,
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Container(
                                          width: 200,
                                          child: Image.asset(
                                              "assets/images/x-ray_in_center.png",
                                              fit: BoxFit.fill),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          " ${controller.data[index]['Name']}",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                      ),
                                      // Expanded(
                                      //   flex: 2,
                                      //   child: Text(
                                      //     " ${controller.data[0]['center_service'][index]['Name']}",
                                      //     style: TextStyle(
                                      //         color: Colors.white, fontSize: 15),
                                      //   ),
                                      // ),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          "${controller.data[index]['Price']}",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                      ),
                                      // Expanded(
                                      //   flex: 2,
                                      //   child: Text(
                                      //     "${controller.data[0]['center_service'][index]['Price']}",
                                      //     style: TextStyle(
                                      //         color: Colors.white, fontSize: 15),
                                      //   ),
                                      // ),
                                      Spacer(),
                                    ],
                                  )),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
        })
    );
  }
}
