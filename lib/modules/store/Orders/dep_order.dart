import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../static_colors/StaticColors.dart';

import 'dep_ordercontroller.dart';

class dep_order extends StatelessWidget {
  dep_ordercontroller controller = Get.put(dep_ordercontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 120, bottom: 20),
          child: Text(
            'الطلب',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height - 160, // ارتفاع المحتوى
            child: GridView.builder(
              itemCount: controller.order.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3.3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 50,
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        color: StaticColor.primarycolor,
                        width: 2,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(
                            ' اسم المنتج : ${controller.order[index].name}',
                            style: TextStyle(fontSize: 18),
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(width: 100),
                          Text(
                            ' الكمية المطلوبة : ${controller.order[index].quantity}',
                            style: TextStyle(fontSize: 18),
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Get.snackbar(

                    'تم قبول الطلب',
                    ''
                    ,
                    backgroundColor: Colors.white,
                    colorText:StaticColor.primarycolor,
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      StaticColor.primarycolor,
                ),
                child: Text('قبول'),
              ),
              SizedBox(width: 30),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('تأكيد الرفض'),
                        content: Text('هل أنت متأكد من رفض هذا الطلب؟'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('لا'),
                            onPressed: () {

                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child: const Text('نعم'),
                            onPressed: () {
                              Get.snackbar(

                                'تم حذف الطلب',
                                ''
                                ,
                                backgroundColor: Colors.white,
                                colorText:StaticColor.primarycolor,
                              );
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      StaticColor.primarycolor, // تعيين اللون الأزرق كلون للزر
                ),
                child: Text('رفض'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
