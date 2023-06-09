import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/doctor/EditVisit/EditVisitController.dart';

import '../record/patientVisitRecord.dart';
class EditVisit extends StatelessWidget {


  EditVisitController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,

        backgroundColor:Color(0xff9bb4fd),

        title:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            


            Spacer(),
            Expanded(
              child: Text(
                'تفاصيل المعاينة',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(width: 20,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            buildTextField("الضغط"),
            buildTextField("الحرارة"),
            buildTextField("SPO2"),
            buildTextField("النبض"),
            buildTextField("القصة السريرية"),

            buildTextField("الفحص السريري"),
            buildTextField("السوابق لمرضية"),
            buildTextField("العلاج"),
            buildTextField("التشخيص"),

            buildTextField("ملاحظات"),
            SizedBox(height: 40,),
            Center(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(onPressed: (){    controller.showMyDialog();
                    }, icon: Icon(Icons.delete_outline,color: Colors.red,size: 50,)),
                SizedBox(width: 50,),
                IconButton(onPressed: (){controller.EditVisi();}, icon:  Icon(Icons.check_circle_outline_outlined,color: Color(0xff9bb4fd),size:50 ,))
                ],
              ),
            ),

          SizedBox(height: 70,),


          ],



        ),
      ),


    );
  }
  Widget buildTextField(String string) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 30,left: 15,right: 15),
      // width: Get.width * 0.90,
      //  height: Get.height * 0.12,

      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child:  TextField(


          controller: controller.textEditingController,
        textDirection: TextDirection.rtl,
        maxLines: null,
       textAlign: TextAlign.right,

        decoration: InputDecoration(

          labelText:'${string}' ,


          labelStyle: TextStyle(color: Colors.indigo,
            fontSize: 22.5,
              fontWeight: FontWeight.bold

          ),

          border: OutlineInputBorder(

            borderSide: BorderSide(color: Colors.indigo),
          ),

        ),
      ),


    );
  }
}
