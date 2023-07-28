import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/reception/home/profile_info/profile_info_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Profile_info_reception extends StatelessWidget {
  const Profile_info_reception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Profile_info_controller controller = Get.put(Profile_info_controller());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: StaticColor.primarycolor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.start,
                "معلومات الملف الشخصي",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: GetBuilder<Profile_info_controller>(builder: (controller) {
          return
            controller.statusRequest==StatusRequest.loading?
            Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,)):
            SafeArea(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: StaticColor.primarycolor,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                          left: 130,
                          top: 90,
                          child: CircleAvatar(
                            child: Image.asset(
                                "assets/images/patient_profile.png"),
                            radius: 55,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "اسم المستخدم",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: StaticColor.thirdgrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "${controller.data_details[3]}",
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
                          "البريد الالكتروني",
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
                          child: Text(
                            "${controller.data_details[6]}",
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
                          " الراتب",
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
                          child: Text(
                            "${controller.data_details[10]}",
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
                          "تاريخ الإنضمام",
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
                          child: Text(
                            "${controller.data_details[11]}",
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
                          "نوع العمل",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: StaticColor.thirdgrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "${controller.data_details[7]}",
                            style: TextStyle(
                                fontSize: 15, color: StaticColor.primarycolor),
                            textAlign: TextAlign.end,
                          ),
                        ),
                        const Divider(
                          height: 2,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
