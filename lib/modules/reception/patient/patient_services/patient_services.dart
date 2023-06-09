import 'package:flutter/material.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
import 'package:get/get.dart';

class Patient_services extends StatelessWidget {
  const Patient_services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: const BoxDecoration(
                      color: StaticColor.primarycolor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
                Positioned(
                  top: 5,
                  left: 130,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Image.asset("assets/images/patient_profile.png"),
                  ),
                ),
                const Positioned(
                    top: 110,
                    left: 150,
                    child: Text(
                      "محمد سعيد",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )),
              ],
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
                        width: 50,
                        child: Image.asset(
                          "assets/images/assistance.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      const Text(
                        "خدمات المريض",
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
              padding: const EdgeInsets.all(8),
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      height: MediaQuery.of(context).size.height * 0.1,
                      margin: const EdgeInsets.only(bottom: 10),
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
                                Container(
                                  height: 60,
                                  width: 50,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Image.asset(
                                            "assets/images/approved.png",
                                            fit: BoxFit.fill,
                                          )),
                                      const Expanded(child: Text("تأكيد")),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.bottomSheet(Container(
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          color: Colors.white),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 5),
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
                                                const Text("محمد سعيد :"),
                                                const Text(" الطبيب",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image.asset(
                                                      "assets/images/doctor.png"),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
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
                                        const Expanded(child: Text("التفاصيل")),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: const Text("اسم الخدمة"),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
