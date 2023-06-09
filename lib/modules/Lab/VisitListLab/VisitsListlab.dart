import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'VisitsListControllerlab.dart';



class VisitsListlab extends StatelessWidget {
  VisitsListlabController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 120, bottom: 20),
          child: Text(
            'سجل المريض ',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              // add some space between the title and the icon
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed('/PersonalInformationlab');
                  },
                  child: Container(
                    color: Color.fromARGB(100, 189, 189, 189).withAlpha(50),
                    // margin: const EdgeInsets.only(bottom: 7,left: 7,right: 7),
                    width: Get.width,
                    height: 60,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.arrow_back_ios,
                              color: Color(0xff9bb4fd)),
                        ),
                        Text(
                          "البيانات الشخصية للمريض ",
                          style: TextStyle(
                            color: Color(0x8e000000),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.featured_play_list_outlined,
                            color: Color(0xff9bb4fd),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'سجل الزيارات',
                  style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 25,
                    color: Colors.black54,
                  ),
                ),
              ),
              visit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget visit() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: controller.toggleDetails,
        child: Container(
          width: Get.width * 0.90,
          //height: Get.height * 0.20,
          decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xff9bb4fd),
                width: 2.2,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white),

          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      // width: 0.5,
                      ),
                  Icon(Icons.arrow_drop_down_sharp),
                  Text(
                    '12-3-2022',
                  ),
                  SizedBox(
                    width: 2,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Obx(() {
                if (controller.showDetails.value) {
                  return Column(
                    children: [

                      if (controller.makhbar != false) makhbar(),
                    ],
                  );
                } else {
                  return SizedBox.shrink();
                }
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget widget1(String s1, String string, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7, left: 7, right: 7),
      width: Get.width,
      // height: 60,
      color: Color.fromARGB(100, 189, 189, 189).withAlpha(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Text(
            '${string}',
            maxLines: null,
            textAlign: TextAlign.center,
          )),
          Text('  :  ' + '${s1}', maxLines: null, textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              icon,
              color: Color(0xff9bb4fd),
            ),
          )
        ],
      ),
    );
  }

  Widget makhbar() {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              Get.toNamed('/EditVisitlab');
            },
            child: Text(
              'تعديل',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xff9bb4fd),
              ),
            )),
        Text('مخبر',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w100,
              color: Colors.black45,
            )),
        widget1('أسماء التحاليل ', 'تعدان كريات \n تعداد كريات ',
            Icons.edit_note_sharp),
        widget1('اسم المخبري', 'سامر اسماعيل', Icons.co_present_outlined),
        SizedBox(
          height: 20,
        )
      ],
    );
  }


}
