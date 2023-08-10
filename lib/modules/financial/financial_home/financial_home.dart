import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/financial/financial_home/financial_home_controller.dart';

class financial_home extends StatelessWidget {
  const financial_home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    financial_home_controller controller = Get.put(financial_home_controller());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          size: 40,
                          color: Color(0xff9bb4fd),
                        ),
                        color: Color(0xff9bb4fd),
                        onPressed: () {},
                      ),
                    ),
                    Obx(() => Padding(
                          padding: const EdgeInsets.only(
                            right: 30.0,
                            top: 30.0,
                            bottom: 7.0,
                          ),
                          child: Container(
                            width: 55,
                            height: 55,
                            //color:Color(0xFF649EFF) ,
                            decoration: BoxDecoration(
                              color: Color(0xff9bb4fd),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: Stack(
                                children: [
                                  Icon(Icons.notifications,
                                      size: 38, color: Color(0xFFFFFFFF)),
                                  if (controller.notificationCount.value > 0)
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.all(1),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        constraints: BoxConstraints(
                                          minWidth: 15,
                                          minHeight: 15,
                                        ),
                                        child: Text(
                                          '${controller.notificationCount.value}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                              onPressed: () {
                                controller.incrementNotificationCount();
                                print(controller.notificationCount.value);
                              },
                            ),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35, bottom: 3, top: 10),
                  child: Text(
                    "المدير المالي",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 32,
                      color: Color(0xff36414d),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 38, bottom: 14, top: 3),
                  child: Text(
                    "مركز ألفا الطبي",
                    style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        color: Colors.black38),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Get.toNamed('/inancial_sections');
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,

                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9bb4fd), width: 3),
                        color: Color(0xfff3f3fc),
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Center(
                          child: Text(
                        'واردات الأقسام',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.black38,
                        ),
                      )),
                      // ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/Payments_and_Receipts');
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,

                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9bb4fd), width: 3),
                        color: Color(0xfff3f3fc),
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Center(
                          child: Text(
                        'المدفوعاات & المقبوظات',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.black38,
                        ),
                      )),
                      // ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/maintenance');
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,

                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9bb4fd), width: 3),
                        color: Color(0xfff3f3fc),
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Center(
                          child: Text(
                        'طلب صيانة',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.black38,
                        ),
                      )),
                      // ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/financial_material');
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,

                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9bb4fd), width: 3),
                        color: Color(0xfff3f3fc),
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Center(
                          child: Text(
                        'لائحة المواد',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                          color: Colors.black38,
                        ),
                      )),
                      // ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed('/Financial_invoices_archive');
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: 50,

                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff9bb4fd), width: 3),
                        color: Color(0xfff3f3fc),
                        borderRadius: BorderRadius.circular(25),
                      ),

                      child: Center(
                          child: Text(
                            'أرشيف الفواتير',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w100,
                              color: Colors.black38,
                            ),
                          )),
                      // ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
