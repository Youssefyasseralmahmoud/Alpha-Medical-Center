import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
class Clinics extends StatelessWidget {
  const Clinics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
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
                  GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed("/wating_in_clinics");
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
                                  child: Image.asset(
                                      "assets/images/children.png",
                                      fit: BoxFit.fill),
                                ),
                                const Expanded(
                                    child: Text(
                                      "عيادة الأطفال",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ))
                              ],
                            )),
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
