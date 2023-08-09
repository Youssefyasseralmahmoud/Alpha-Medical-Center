import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Financial_invoices_archive extends StatelessWidget {
  const Financial_invoices_archive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 170, bottom: 20),
            child: Text(
              'أرشيف الفواتير',
              style: TextStyle(color: Colors.black54, fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Color(0xff9bb4fd),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xff9bb4fd), // تحديد لون الحدود الجديد
                          width: 2.0, // تحديد عرض الحدود الجديدة
                        ),
                        borderRadius:
                            BorderRadius.circular(10.0), // تحديد شكل الحواف
                      ),
                      // باقي الأكواد هنا
                      margin: EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text('اسم المريض : راما',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 20)),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('اسم الخدمة -',
                                    textAlign: TextAlign.right),
                                Text('اسم الخدمة -',
                                    textAlign: TextAlign.right),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Divider(height: 5,color: Colors.black54),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Column(
                                      children: [
                                        Text(': المبلغ المدفوع',
                                            textAlign: TextAlign.right,style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15)),
                                        Text('200000',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.black45,
                                                fontSize: 15)),

                                      ],
                                    ),

                                    SizedBox(width: 100,),
                                    Column(
                                      children: [
                                        Text(': المبلغ الكلي',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15)),
                                        Text('200000',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.black38,
                                                fontSize: 15)),
                                      ],
                                    ),
                                  ],
                                ),
                               SizedBox(height: 15,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
