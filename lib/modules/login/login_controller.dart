import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/config/user_information.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/login/login_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Login_controller extends GetxController{
  GlobalKey<FormState> formstate= GlobalKey<FormState>();
  late String username;
  late String password;
  Login_services services =Login_services(Get.find());
   StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
   late var admin_token;
  late var doctor_token;
  String? Function(String?)? valid;



  checkinput(){
    var formdata=formstate.currentState;
    if(formdata!.validate()){
      login();
    }else{
      print("الحقول غير صالحة");
    }
  }

  login() async{

    statusRequest=StatusRequest.loading;
    update();
    var response =await services.login(username.toString(),password.toString());
    statusRequest=handlingdata(response);

    if(StatusRequest.succes==statusRequest){

      if(response['code']== 1 && response['data']['user']['surname'] == "admin" ){
        // && response['carer']=='reception'
        admin_token=response['data']['token'];
        print("tesst from login");
        secury_storage.save("admin_token", admin_token);
        await Get.snackbar("تسجيل دخول ناجح", "تمت عملية الدخول بنجاح",);
         //Get.toNamed("/Home_screen_store");
        Get.toNamed("/FancyNavBarlab");
      }
      else if(response['code']== 1 && response['data']['user']['surname'] == "doctor" ) {
        // && response['carer']=='reception'
        doctor_token=response['data']['token'];
        print("tesst from login");
        secury_storage.save("doctor_token", doctor_token);
        await Get.snackbar("تسجيل دخول ناجح", "تمت عملية الدخول بنجاح",);
        Get.toNamed("/HomeDoctor");
      }
      else{
        statusRequest=StatusRequest.failure;
      }

    }else{
      Get.defaultDialog(title: "حدث خطأ ما",content:Text("اسم المستخدم أو كلمة المرور خطا"));
    }
    update();
  }
}