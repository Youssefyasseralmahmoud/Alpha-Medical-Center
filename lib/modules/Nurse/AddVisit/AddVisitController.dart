import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/Nurse/AddVisit/AddVisitServices.dart';
import 'package:project_after_update/modules/Nurse/Home/homeNurseController.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class AddVisitController extends GetxController {
  GlobalKey<FormState> formstate= GlobalKey<FormState>();
  late String referingdoctor;
  late int IDPatientRecord ;
  late String title;
  AddVisitServices services =AddVisitServices(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  late var message;
  String? Function(String?)? valid;

  checkinput(){
    var formdata=formstate.currentState;
    if(formdata!.validate()){
      visit_registration();
    }else{
      print("الحقول غير صالحة");
    }
  }

  visit_registration() async{
    statusRequest=StatusRequest.loading;
    update();
    var response =await services.visit_registration(IDPatientRecord, title, referingdoctor);

    statusRequest=handlingdata(response);

    if(StatusRequest.succes==statusRequest){

      await Get.snackbar("تم التسجيل بنجاح", "تمت عملية تسجيل الزيارة بنجاح",);


    }else if(StatusRequest.failure==statusRequest){
      await Get.snackbar("تنبيه", "لم يتم تسجيل  الزيارة بنجاح",);
    }
    else{
      Get.defaultDialog(title: "حدث خطأ ما",content:Text("لم يتم تسجيل  الزيارة بنجاح "));
    }
    update();
  }
  @override
  void onInit() {
    // IDPatientRecord=Get.arguments['IDPatientRecord'];
    // title=Get.arguments['title'];
  }





















//  GlobalKey<FormState> formstate= GlobalKey<FormState>();

 //  late String Pressure='r4e';
 //  late String Heartbeat='h';
 //  late String BodyHeat='gr';
 //  late String ClinicalStory='hfch';
 //  late String ClinicalExamination='hfdxh';
 //  late int id;
 //  AddVisitServices services =AddVisitServices(Get.find());
 //  StatusRequest? statusRequest;
 //  Secury_storage secury_storage = new Secury_storage();
 // // late var token;
 //  String? Function(String?)? valid;
 //


 //  checkinput(){
 //    var formdata=formstate.currentState;
 //    if(formdata!.validate()){
 //      add_result();
 //    }else{
 //      print("الحقول غير صالحة");
 //    }
 //  }
 //
 //  add_result() async{
 //
 //    statusRequest=StatusRequest.loading;
 //    update();
 //    var response =await services.add_resault(Pressure,Heartbeat,BodyHeat,ClinicalStory,ClinicalExamination,id);
 //    statusRequest=handlingdata(response);
 //
 //    if(StatusRequest.succes==statusRequest) {
 //      await Get.snackbar("تم الإضافة بنجاح", "تمت عملية إرفاق النتيجة بنجاح",);
 //    }
 //
 //    else if(StatusRequest.failure==statusRequest){
 //      await Get.snackbar("تحذير", "هذا الرقم الوطني موجود بالفعل",);}
 //
 //    else{Get.defaultDialog(title: " خطأ ",content:Text("حدث خطأ ما"));}
 //    update();
 //  }
 // //  @override
 // //  void onInit() {
 // //    id = Get.arguments['id'];
 // //    print("idddddd22");
 // //    print(id);
 // //  }
 //
 //  //////////////////////////////
 //  //GlobalKey<FormState> formstate= GlobalKey<FormState>();
 //  late String referingdoctor;
 //  late String IDPatientRecord ;
 //  late String title;
 //
 //
 //
 //  visit_registration() async{
 //    statusRequest=StatusRequest.loading;
 //    update();
 //    var response =await services.visit_registration(IDPatientRecord, title, referingdoctor);
 //
 //    statusRequest=handlingdata(response);
 //
 //    if(StatusRequest.succes==statusRequest){
 //
 //      await Get.snackbar("تم التسجيل بنجاح", "تمت عملية تسجيل الزيارة بنجاح",);
 //
 //
 //    }else if(StatusRequest.failure==statusRequest){
 //      await Get.snackbar("تنبيه", "لم يتم تسجيل  الزيارة بنجاح",);
 //    }
 //    else{
 //      Get.defaultDialog(title: "حدث خطأ ما",content:Text("لم يتم تسجيل  الزيارة بنجاح "));
 //    }
 //    update();
 //  }
 //  @override
 //  void onInit() {
 //    IDPatientRecord=Get.arguments['IDPersonal'];
 //    id = Get.arguments['id'];
 //    //title=Get.arguments['title'];
 //  }
}
