import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Salary_increase extends StatelessWidget {
  const Salary_increase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
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
                      onPressed: () {
                        Get.toNamed("/notification");
                      },
                      icon: const Icon(
                        Icons.notifications_active_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
                    "قسم الإدارة",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Container(
                    //  padding: EdgeInsets.all(2),
                    color: StaticColor.primarycolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 70,
                          width: 100,
                          child: Image.asset(
                            "assets/images/logo.jpg",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 5),
                          child: const Text(
                            "طلبات زيادة الرواتب والنسب",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black45,
                  ),
                ],
              ),
            ),
            Card(
              child: Container(
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
                            Expanded(
                              child: Container(
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
                                          const Expanded(child: Text("قبول")),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      width: 50,
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Image.asset(
                                                "assets/images/cancel.png",
                                                fit: BoxFit.fill,
                                              )),
                                          const Expanded(child: Text("رفض")),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: ListTile(
                                  trailing: GestureDetector(
                                    onTap: () {
                                      Get.bottomSheet(Container(
                                        color: Colors.white,
                                        // decoration: const BoxDecoration(
                                        //     borderRadius: BorderRadius.only(
                                        //         topLeft: Radius.circular(20),
                                        //         topRight: Radius.circular(20)),
                                        //     color: Colors.white),
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 8),
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
                                                  const Text(
                                                    " 5000000 : النسبة _ الراتب  ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Spacer(),
                                                  const Text(" طبيب :"),
                                                  const Text(
                                                    " الإختصاص",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: 50,
                                                    child: Image.asset(
                                                        "assets/images/medical-team.png"),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ));
                                    },
                                    child: CircleAvatar(
                                      radius: 20,
                                      child: Image.asset(
                                          "assets/images/doctor.png"),
                                    ),
                                  ),
                                  leading: const Text("اسم الموظف"),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
