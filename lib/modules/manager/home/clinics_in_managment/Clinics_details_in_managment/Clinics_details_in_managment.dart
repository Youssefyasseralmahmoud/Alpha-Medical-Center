import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/Clinics_details_in_managment/clinics_daetails_in_managment_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Clinics_details_in_managment extends StatelessWidget {
  const Clinics_details_in_managment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Clinics_details_in_manamgment_controller controller =
        Get.put<Clinics_details_in_manamgment_controller>(
            Clinics_details_in_manamgment_controller());
    return DefaultTabController(
      length: 3,
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
                    "assets/images/doctor.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/import.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Tab(
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/export.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
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
                  padding: const EdgeInsets.all(10),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed("/Doctors_details_in_managment");
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            margin: const EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              color: StaticColor.thirdgrey,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:  Column(
                           crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                 Text(
                                  "اسم الطبيب : سامر أحمد ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                 Text("اسم العيادة : الأطفال",style: TextStyle(color: Colors.grey),),
                                Text(" حالة الطبيب : متواجد",style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "الواردات ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "مركز الفا الطبي",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Divider(
                          height: 5,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child:
                          GetBuilder<Clinics_details_in_manamgment_controller>(
                              builder: (controller) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return controller.droped == false
                                  ? Container(
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 10),
                                      margin: const EdgeInsets.only(top: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      decoration: BoxDecoration(
                                          color: StaticColor.thirdgrey
                                              .withAlpha(30),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    controller.ontapdropdown(
                                                        controller.droped);
                                                    print(controller.droped);
                                                  },
                                                  child: const Icon(
                                                      Icons.arrow_drop_down)),
                                            ],
                                          ),
                                          const Text(
                                            "2023-7-5",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,color: StaticColor.primarycolor),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(
                                      padding:
                                          const EdgeInsets.symmetric(horizontal: 10),
                                      margin: const EdgeInsets.only(top: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.1,
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      decoration: BoxDecoration(
                                          color: StaticColor.thirdgrey
                                              .withAlpha(30),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    GestureDetector(
                                                        onTap: () {
                                                          controller
                                                              .ontapdropdown(
                                                                  controller
                                                                      .droped);
                                                          print(controller
                                                              .droped);
                                                        },
                                                        child: const Icon(Icons
                                                            .arrow_drop_down)),
                                                  ],
                                                ),
                                                const Text(
                                                  "2023-7-5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: StaticColor
                                                          .primarycolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10,),
                                          const Text(
                                            " : المبلغ  ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                            });
                      })),

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "المدفوعات ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "مركز الفا الطبي",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        Divider(
                          height: 5,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child:
                      GetBuilder<Clinics_details_in_manamgment_controller>(
                          builder: (controller) {
                            return ListView.builder(
                                shrinkWrap: true,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return controller.droped_two == false
                                      ? Container(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                    margin: const EdgeInsets.only(top: 10),
                                    height:
                                    MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.width *
                                        0.8,
                                    decoration: BoxDecoration(
                                        color: StaticColor.thirdgrey
                                            .withAlpha(30),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  controller.ontapdropdown_two(
                                                      controller.droped_two);
                                                  print(controller.droped_two);
                                                },
                                                child: const Icon(
                                                    Icons.arrow_drop_down)),
                                          ],
                                        ),
                                        const Text(
                                          "2023-7-5",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,color: StaticColor.primarycolor),
                                        ),
                                      ],
                                    ),
                                  )
                                      : Container(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                    margin: const EdgeInsets.only(top: 10),
                                    height:
                                    MediaQuery.of(context).size.height *
                                        0.1,
                                    width: MediaQuery.of(context).size.width *
                                        0.8,
                                    decoration: BoxDecoration(
                                        color: StaticColor.thirdgrey
                                            .withAlpha(30),
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        controller
                                                            .ontapdropdown_two(
                                                            controller
                                                                .droped_two);
                                                      },
                                                      child: const Icon(Icons
                                                          .arrow_drop_down)),
                                                ],
                                              ),
                                              const Text(
                                                "2023-7-5",
                                                style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    color: StaticColor
                                                        .primarycolor),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        const Text(
                                          " : المبلغ  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          })),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
