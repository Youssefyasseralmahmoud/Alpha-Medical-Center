import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/financial/waiting_from_reception/waiting_from_reception_Controller.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final financialController = Get.put(FinancialController());

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 190, bottom: 20),
          child: Text(
            'الفاتورة',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 36,top: 20,left: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                ': اسم المريض ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 12),
              Text(
                'راما',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 15),
              Divider(height: 2,color: Colors.black54,endIndent: 20,indent: 20),
              SizedBox(height: 15),
              Text(
                'الخدمات',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  // final service = widget.patient.services[index];
                  return ListTile(
                    title: Text(
                      'خدمة 1',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.right,
                    ),
                    subtitle: Text(
                      'السعر:  20000',
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.right,
                    ),
                  );
                },
              ),
              Divider(height: 2,color: Colors.black54,endIndent: 20,indent: 20),
              SizedBox(height: 16),
              Text(
                'إجمالي المبلغ',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8),
              Text(
                '200000',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8),
              Text(
                'المبلغ المدفوع',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
              SizedBox(height: 8),
              TextFormField(
                onChanged: (val) {
                  financialController.input = val;
                },
                // controller: amountPaidController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'أدخل المبلغ المدفوع',
                  alignLabelWithHint: true, // تحديد محاذاة النص إلى اليمين
                ),
              ),


              SizedBox(height: 36),
              GestureDetector(
                onTap: () {  Get.toNamed('/maintenance'); },
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 50,

                    margin: EdgeInsets.only(left: 20,right: 20, bottom: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff9bb4fd), width: 3),
                      color: Color(0xfff3f3fc),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: Center(
                        child: Text(
                          'حفظ الفاتورة',
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
            ],
          ),
        ),
      ),
    );
  }
}

