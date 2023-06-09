

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/manager/join_request/join_request_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Join_request_controller extends GetxController {
  Join_request_services services = Join_request_services(Get.find(),Get.find(),Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  List test_data=[];
  bool reload=false;

 Future<void> hotreload()async {
   await !(reload);
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
        "تحذير",
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
    statusRequest = StatusRequest.loading;
    update();
    var response =
    await services.accept_join(id);

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
  void onInit() {
    get_all_join_request();
  }
}
