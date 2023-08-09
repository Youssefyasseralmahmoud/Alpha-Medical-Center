import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui';
class orders_from_warehouse extends StatelessWidget {
  const orders_from_warehouse({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.black54,size: 28),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Expanded(
              child: Text(
                'طلبات المستودع',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 25, color: Colors.black54),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      body: _buildMaterialList(),


    );
  }

  Widget _buildMaterialList() {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0xff9bb4fd),
                )
              ],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(

              children: [

                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(
                            0xD0F65050)),
                      ),
                      child: Text('رفض الطلبة'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
                      ),
                      onPressed: () {
                        // Implement salary increase request logic here
                        // You can access the entered values using the employee instance
                        Get.back();
                      },
                      child: Text('قبول الطلبية'),
                    ),
                  ],
                ),

                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '  (  العدد  :  20  )',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "قطن",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w200,
                            fontFamily: 'Arial',
                          ),
                        ),
                      ],
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional.bottomEnd,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 2,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0x49e1e7f8), Color(0xff9bb4fd)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                          ),
                        ),
                        alignment: AlignmentDirectional(-1, 0),
                        child: Center(
                          child: Text(
                            '12/12/2022',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w400,
                              fontSize: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  void _editmMateriaPriceslDialog() {
    Get.defaultDialog(
      title: 'تعديل السعر',
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30),
            child: TextFormField(

              decoration: InputDecoration(labelText: 'السعر الجديد'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'رجاء ادخل السعر الجديد ';
                }
                return null;
              },
              onSaved: (value) {
                final newSalary = double.tryParse(value!);
                if (newSalary != null) {
                  // employee.salary = newSalary;
                }
              },
            ),
          ),

        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          child: Text('إلغاء'),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          onPressed: () {
            // Implement salary increase request logic here
            // You can access the entered values using the employee instance
            Get.back();
          },
          child: Text('تعديل السعر'),
        ),
      ],
    );
  }
}
