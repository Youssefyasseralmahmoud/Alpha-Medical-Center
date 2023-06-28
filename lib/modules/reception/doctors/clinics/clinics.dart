import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/clinics_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
class Clinics extends StatelessWidget {
  const Clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Clinics_controler controller =Get.put(Clinics_controler());
    return
      Scaffold(
        body: GetBuilder<Clinics_controler>(builder: (controller){
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
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      const Text(
                        "عيادات المركز",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "مركز ألفا الطبي",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.black45,
                      ),
                      GridView.builder(
                        itemCount: controller.data.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context,index){
                          return
                            GestureDetector(
                              onTap: () {
                                Get.toNamed("/wating_in_clinics",arguments: {
                                  "id":controller.data[index]['id']
                                });
                              },
                              child: Container(
                                // height: MediaQuery.of(context).size.height * 0.3,
                                // width: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: StaticColor.primarycolor,
                                  ),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex: 5,
                                        child:
                                        controller.data[index]['Name']=='عيادة أطفال'?
                                        Image.asset(
                                            "assets/images/children.png",
                                            fit: BoxFit.fill):
                                        Image.asset(
                                            "assets/images/clinic.png",
                                            fit: BoxFit.fill) ,
                                      ),
                                      Expanded(
                                          child:
                                          Text(
                                            "${controller.data[index]['Name']}",
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15),
                                          )
                                      )
                                    ],
                                  )),
                            );
                        },
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
