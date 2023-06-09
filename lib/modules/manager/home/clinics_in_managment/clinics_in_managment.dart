import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Clinics_in_managment extends StatelessWidget {
  const Clinics_in_managment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: StaticColor.primarycolor,
        child: Icon(Icons.add_circle),
        onPressed: (){
          Get.toNamed("/Add_clinics");
        },
      ),
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
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "عيادات المركز",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "مركز ألفا الطبي / قسم الإدارة",
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
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed("/Clinics_details_in_managment");
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
                                        "assets/images/clinic.png",
                                        fit: BoxFit.fill),
                                  ),
                                ),
                                const Expanded(
                                  flex: 2,
                                  child: Text(
                                    "عيادة الأطفال",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset(
                                              "assets/images/pen.png"),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title:
                                                "هل تريد حذف هذه العيادة من المركز ؟",
                                            content: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  alignment: Alignment.center,
                                                  height: 50,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: StaticColor
                                                        .primarycolor,
                                                  ),
                                                  child: const Text(
                                                    "نعم",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  alignment: Alignment.center,
                                                  height: 50,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: StaticColor
                                                        .primarycolor,
                                                  ),
                                                  child: const Text(
                                                    "لا",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Image.asset(
                                              "assets/images/delete.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
      ),
    );
  }
}
