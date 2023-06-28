

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/manager/join_request/join_request_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Join_request_controller extends GetxController {
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
    "مخزن",
    "ضيف"
  ];
  changedepartment(String value){
    selected=value;
    update();
  }
  late var type;
  late int id_type_user;
  Join_request_services services = Join_request_services(Get.find(),Get.find(),Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  List data_type_user=[];
  List test_data=[];
  List test_data_type_user=[];
  bool reload=false;

 Future<void> hotreload()async {
   await !(reload);
    update();
  }
  get_all_type_user() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_type_user();
    test_data_type_user.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data_type_user.isNotEmpty) {
      data_type_user.clear();
      data_type_user.addAll(response['data']) ;
      print("all type users is");
      print(data_type_user);
    }
    else if(test_data_type_user.isEmpty) {
      await Get.snackbar(
        "تنبيه",
        "لا يوجد طلبات لعرضهم",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد طلبات لعرضهم",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
  get_all_join_request() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_join_request();
    test_data.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data.isNotEmpty) {
      data.clear();
      data.addAll(response['data']) ;
      print("response from patient controller");
      print(data);
      print(data[0]['username']);
    }
    else if(test_data.isEmpty) {
      await Get.snackbar(
        "تنبيه",
        "لا يوجد طلبات لعرضهم",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد طلبات لعرضهم",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
  accept_join(int id) async {
    if(type == "طبيب"){
      type="Doctor";
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
      type="Nurse";
    }
    else if(type=="أشعة"){
      type="Radiographer";
    }
    else if(type=="إستقبال"){
      type="Receptionist";
    } else if(type=="ضيف"){
      type="Guest";
    }else{
      type="Store";
    };
    data_type_user.forEach((name) {
      if(name['Name']==type){
        id_type_user=name['id'];
      }
    });
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await services.accept_join(id,id_type_user);

    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      await Get.snackbar(
        "تم قبول الطلب",
        "تم قبول طلب الإنضمام بنجاح",
      );
    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تنبيه",
        "${response['message']}",
      );
    } else {
      Get.defaultDialog(
          title: "حدث خطأ ما", content: Text("لم يتم قبول طلب الإنضمام "));
    }
    update();
  }
  reject_join(int id) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.reject_join(id);

    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      await Get.snackbar("!", "تمت عملية رفض طلب الإنضمام ");

    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تنبيه",
        "${response['message']}",
      );
    } else {
      await Get.snackbar("تنبيه", "تمت عملية رفض الطلب بنجاح");
      //  Get.defaultDialog(title: " تم", content: Text("حدث خطا ما"));
    }
    update();
  }


  @override
  void onInit()async{
   await get_all_type_user();
    get_all_join_request();
  }
}
