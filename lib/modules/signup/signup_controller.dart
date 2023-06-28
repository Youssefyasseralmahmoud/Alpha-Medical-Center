import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/signup/signup_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';
class SignupController extends GetxController{
   String selected="طبيب";
  List<String> department=[
    "طبيب",
    "ممرض",
    " أشعة",
    "مخبر",
    "مالية",
    "مدير",
    "إسعاف",
    "إستقبال",
    "أدمن",
    "مخزن"
  ];
  changedepartment(String value){
    selected=value;
    update();
  }

   GlobalKey<FormState> formstate= GlobalKey<FormState>();
   late var username;
   late var password;
   late var name;
   late var surname;
   late var conf_pass;
   late var email;
   late var type;
   late int id_section;
   List test_data_type_user=[];
   List data_type_user=[];
   register_services services =register_services(Get.find(),Get.find());
   StatusRequest? statusRequest;
   Secury_storage secury_storage = new Secury_storage();
   late var admin_token;
   late var doctor_token;
   String? Function(String?)? valid;
    String? message;


   checkinput(){
     var formdata=formstate.currentState;
     if(formdata!.validate()){
       register();
     }else{
       print("الحقول غير صالحة");
     }
   }
   get_all_section() async {
     statusRequest = StatusRequest.loading;
     update();
     var response = await services.get_all_section();
     test_data_type_user.addAll(response['data']) ;
     statusRequest = handlingdata(response);

     if (StatusRequest.succes == statusRequest&& test_data_type_user.isNotEmpty) {
       data_type_user.clear();
       data_type_user.addAll(response['data']) ;
       print("all type section is");
       print(data_type_user);
     }
     else if(test_data_type_user.isEmpty) {
       await Get.snackbar(
         "تنبيه",
         "لا يوجد اقسام لعرضهم",
       );
     }
     else if (StatusRequest.failure == statusRequest) {
       await Get.snackbar(
         "تحذير",
         "لا يوجد اقسام لعرضهم",
       );
     }
     else {
       Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
     }
     update();
   }


   register() async{
     if(type == "طبيب"){
       type="clinic";
     } else if(type=="أدمن"){
       type="Administration";
     }else if(type=="إسعاف"){
       type="Ambulance";
     }
     else if(type=="مالية"){
       type="Finance";
     }
     else if(type=="مخبر"){
       type="Laboratory";
     }
     else if(type=="مدير"){
       type="Manager";
     }
     else if(type=="ممرض"){
       type="clinic";
     }
     else if(type=="أشعة"){
     type="xray";
     }
     else if(type=="إستقبال"){
       type="Reception";
     } else{
       type="Store";
     };
     data_type_user.forEach((name) {
       if(name['Name']==type){
         id_section=name['id'];
       }
     });
     print("the id section from controller is ${id_section}");
     statusRequest=StatusRequest.loading;
     update();
     var response =await services.register(username,password,name,surname,conf_pass,email,type,id_section);
     statusRequest=handlingdata(response);

     if(StatusRequest.succes==statusRequest){

       if(response['code']== 1 && response['data']['type'] == "Receptionist" ){
         // && response['carer']=='reception'
        // admin_token=response['data']['token'];
       //  print("tesst from login");
        // secury_storage.save("admin_token", admin_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");

       } else if (response['code']== 1 && response['data']['type'] == "doctor"){
           // doctor_token=response['data']['token'];
           // print("tesst from login");
           // secury_storage.save("doctor_token", doctor_token);
           await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
           Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Ambulance"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Finance"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Laboratory"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Manager"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Nurse"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Radiographer"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Administration"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }else if (response['code']== 1 && response['data']['type'] == "Store"){
         // doctor_token=response['data']['token'];
         // print("tesst from login");
         // secury_storage.save("doctor_token", doctor_token);
         await Get.snackbar("تم", "تمت عملية إنشاء الحساب بنجاح",);
         Get.toNamed("/login");
       }
       else{
         statusRequest=StatusRequest.failure;
       }

     }else{
       message=response['message'];
       Get.defaultDialog(title: "تنبيه",content:Text("${message}"));
     }
     update();
   }
@override
  void onInit()async{
   await get_all_section();
    super.onInit();
  }


}





