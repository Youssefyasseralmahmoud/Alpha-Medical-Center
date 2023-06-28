import 'package:flutter/material.dart';
import 'package:project_after_update/core/function/validinput.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
import 'package:get/get.dart';
class Patient extends StatelessWidget {
  const Patient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Patient_details_controller controller =Get.put(Patient_details_controller());
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding:
                            const EdgeInsets.symmetric(vertical: 10),
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
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "قسم الإستقبال",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/patient.png"),
                      ),
                      const Text(
                        "عرض تفاصيل المرضى",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black45,
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(20),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Form(
              //  key: controller.formstate,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                        TextFormField(
                          validator: (val){
                            return validinput(val!, 14,14,"idpersonal");
                          },
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            controller.id_patient=value ;
                          },
                          decoration: InputDecoration(
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              label:  const Text(
                                " الرقم الوطني ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: StaticColor.primarycolor,
                                    fontWeight: FontWeight.bold),
                              ),
                              suffixIcon: const Icon(Icons.credit_card_outlined),
                              contentPadding: const EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),


                    Center(
                      child: GestureDetector(
                        onTap: (){
                          controller.checkinput();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.center,
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: StaticColor.primarycolor,
                          ),
                          child: const Text(
                            "إضافة",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ListView.builder(shrinkWrap:true,itemCount:4,itemBuilder: (context,index){
              //   return
              //     Container(
              //       padding: EdgeInsets.all(10),
              //       margin: EdgeInsets.only(top: 10),
              //       height: MediaQuery.of(context).size.height*0.1,
              //       width: MediaQuery.of(context).size.width*0.8,
              //       decoration: BoxDecoration(
              //           color: StaticColor.thirdgrey.withAlpha(30),
              //           borderRadius: BorderRadius.circular(20)
              //       ),
              //       child:  Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             IconButton(icon:Icon(Icons.arrow_back),onPressed: ()async{
              //              await controller.get_patient_details();
              //               Get.toNamed("/patient_details");
              //
              //
              //             },),
              //             SizedBox(width: 10),
              //             CircleAvatar(
              //               radius: 25,
              //               child: Image.asset("assets/images/patient_profile.png"),
              //             ),
              //           ],
              //         ),
              //           Text("محمد سعيد",style: TextStyle(fontWeight:FontWeight.bold),),
              //
              //         ],
              //       ),
              //     );
              //
              // }),
            ),

          ],
        ),
      ),
    );
  }
}
