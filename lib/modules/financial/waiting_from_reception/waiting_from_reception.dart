import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/financial/waiting_from_reception/waiting_from_reception_Controller.dart';
import 'dart:ui';
class waiting_from_reception extends StatelessWidget {
  const waiting_from_reception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     FinancialController financialController = Get.put(FinancialController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0,left: 170,bottom: 20),
          child: Text(
            'قوائم المرضى',
            style: TextStyle(color: Colors.black54,fontSize: 27),
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
                final patient = financialController.patients[index];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff9bb4fd), // تحديد لون الحدود الجديد
                        width: 2.0, // تحديد عرض الحدود الجديدة
                      ),
                      borderRadius: BorderRadius.circular(10.0), // تحديد شكل الحواف
                    ),
                    // باقي الأكواد هنا
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: Column(
                      children: [


                        ListTile(
                          title: Text(patient.name, textAlign: TextAlign.right,),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: patient.services.map((service) {
                              return Text('${service.name} (${service.price})- ',textAlign: TextAlign.right);
                            }).toList(),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            financialController.createInvoice(patient,2000);
                          },
                          child: Text(
                            'إنشاء فاتورة',
                            style: TextStyle(
                                color:Color(0xff9bb4fd),
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
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
      )
    );
  }

}
