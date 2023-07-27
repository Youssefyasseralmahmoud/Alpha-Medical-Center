import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/manager/join_request/join_request_controller.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/patient_visits_details_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Xray_in_visit_details extends StatelessWidget {
  const Xray_in_visit_details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Patient_visits_details_controller controller =Get.put(Patient_visits_details_controller());
    return
     Scaffold(
       body:  SafeArea(
           child: GetBuilder<Patient_visits_details_controller>(builder: (controller){
             return
               controller.statusRequest==StatusRequest.loading?
               Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),):
               Container(
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
                                     contentPadding: const EdgeInsets.symmetric(vertical: 10),
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
                               onPressed: () {
                                 Get.toNamed("/notification");
                               },
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
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           const Text(
                             "قسم الاستقبال",
                             style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.black),
                           ),
                           Container(
                             //  padding: EdgeInsets.all(2),
                             color: StaticColor.primarycolor,
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Container(
                                   height: 70,
                                   width: 100,
                                   child: Image.asset(
                                     "assets/images/logo.jpg",
                                     fit: BoxFit.fill,
                                   ),
                                 ),
                                 Container(
                                   padding: const EdgeInsets.only(right: 5),
                                   child: const Text(
                                     "الصور الشعاعية المنفذة",
                                     style: TextStyle(fontSize: 15, color: Colors.white),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           const Divider(
                             height: 10,
                             color: Colors.black45,
                           ),
                         ],
                       ),
                     ),
                     GetBuilder<Patient_visits_details_controller>(builder: (controller){
                       return
                         controller.data[0]['x_ray'].isEmpty?Container(child: Center(child: Text("لا يوجد صور شعاعية لعرضها",style: TextStyle(color: StaticColor.primarycolor),),),):
                         Card(
                           child: Container(
                             padding: const EdgeInsets.all(8),
                             height: MediaQuery.of(context).size.height * 0.6,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(20),
                             ),
                             child: ListView.builder(
                                 itemCount: controller.data[0]['x_ray'].length,
                                 itemBuilder: (context, index) {
                                   return
                                       Container(
                                         padding: EdgeInsets.all(8),
                                         margin: EdgeInsets.only(bottom: 10),
                                         height: MediaQuery.of(context).size.height*0.09,
                                         width: double.infinity,
                                         decoration:BoxDecoration(
                                           color: StaticColor.thirdgrey.withAlpha(30),
                                           borderRadius: BorderRadius.circular(10)
                                         ) ,
                                         child: Row(
                                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                           children: [
                                             IconButton(onPressed: (){
                                               controller.download_xray(controller.data[0]['x_ray'][index]['id']);
                                             }, icon:Icon(size:30,Icons.download,color: StaticColor.primarycolor,)),
                                             Text("${controller.data[0]['x_ray'][index]['id']}")
                                           ],
                                         ),
                                       );
                                 }),
                           ),
                         );
                     })
                   ],
                 ),
               );
           })
       ),
     );
  }
}
