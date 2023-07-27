

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/manager/join_request/join_request_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Join_request_controller extends GetxController {
  String selected="طبيب";
  String selected2="اختر خدمة";
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
  changedepartment_two(String value){
    selected2=value;
    update();
  }
  late var type;
  late var type2;
  late int id_type_user;
  Join_request_services services = Join_request_services(Get.find(),Get.find(),Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  List data_type_user=[];

  List test_data=[];
  List test_data_type_user=[];

  List test_data_type_services=[];
  List data_type_services=[];

  bool reload=false;
  List data_service_to_show = [];
  late int id_type_services;
 Future<void> hotreload()async {
   await !(reload);
    update();
  }
  organization() async {
    await get_all_type_services_in_center();
    adding_data_to_data_service_to_show();
  }

  adding_data_to_data_service_to_show() {
    print("***** adding_data_to_data_service_to_show is working now *****");
    data_type_services.forEach((name) {
      print(name['Name']);
      data_service_to_show.add(name['Name']);
      print("data service to show are ${data_service_to_show}");
    });
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
  get_all_type_services_in_center() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_type_services_in_center();
    test_data_type_services.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data_type_services.isNotEmpty) {
      data_type_services.clear();
      data_type_services.addAll(response['data']) ;
      print("all type section is");
      print(data_type_services);
    }
    else if(test_data_type_services.isEmpty) {
      await Get.snackbar(
        "تنبيه",
        "لا يوجد خدمات لعرضهم",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد خدمات لعرضهم",
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
    data_type_services.forEach((element) {
      if(element['Name']==type2){
        id_type_services=element['id'];
      }
    });
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await services.accept_join(id,id_type_user,id_type_services);

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
   await organization();
    get_all_join_request();
  }
}
