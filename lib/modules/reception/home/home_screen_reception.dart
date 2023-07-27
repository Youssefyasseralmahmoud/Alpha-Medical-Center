import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/reception/home/home_screen_reception_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Home_screen_reception extends StatelessWidget {
  const Home_screen_reception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Home_screen_reception_controller());
    return GetBuilder<Home_screen_reception_controller>(builder: (controller) {
      return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings,size: 30,color: StaticColor.primarycolor,),
                  SizedBox(width: 5,),
                  Text("قائمة الإعدادات",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                ],
              ),
              Divider(),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                    controller.logout();
                },
                child: Container(
                  padding: EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.09,
                  decoration: BoxDecoration(
                    color:StaticColor.primarycolor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back_ios_new),
                      Text("تسجيل الخروج",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: StaticColor.primarycolor,
          onPressed: () {
            Get.toNamed("/add_record");
          },
          child: Icon(Icons.receipt),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                  ),
                  MaterialButton(
                    onPressed: () {
                      controller.changepage(0);

                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.home,
                          color: controller.currentpage == 0
                              ? StaticColor.primarycolor
                              : Colors.black,
                        ),
                        Text("الرئيسية"),
                      ],
                    ),
                  ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     controller.changepage(1);
                  //   },
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Icon(
                  //         Icons.person,
                  //         color: controller.currentpage == 1
                  //             ? StaticColor.primarycolor
                  //             : Colors.black,
                  //       ),
                  //       Text("المرضى"),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      controller.changepage(1);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.person,
                          color: controller.currentpage == 1
                              ? StaticColor.primarycolor
                              : Colors.black,
                        ),
                        Text("المرضى"),
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                  ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     controller.changepage(2);
                  //   },
                  //   child:
                  //   Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Icon(
                  //         Icons.medical_services,
                  //         color: controller.currentpage == 2
                  //             ? StaticColor.primarycolor
                  //             : Colors.black,
                  //       ),
                  //       Text("الخدمات"),
                  //     ],
                  //   ),
                  // ),
                  // MaterialButton(
                  //   onPressed: () {
                  //     controller.changepage(3);
                  //   },
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Icon(
                  //         Icons.money_rounded,
                  //         color: controller.currentpage == 3
                  //             ? StaticColor.primarycolor
                  //             : Colors.black,
                  //       ),
                  //       Text("فاتورة"),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
        body: controller.listpage.elementAt(controller.currentpage),
      );
    });
  }
}
