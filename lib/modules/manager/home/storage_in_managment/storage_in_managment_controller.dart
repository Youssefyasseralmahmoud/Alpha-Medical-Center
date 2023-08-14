// import 'package:get/get.dart';
// class Storage_in_manamgment_controller extends GetxController {
//   bool droped = false;
//
//   ontapdropdown(bool droped) {
//     this.droped = !droped;
//     update();
//   }
//   bool droped_two = false;
//
//   ontapdropdown_two(bool droped_two) {
//     this.droped_two = !droped_two;
//     update();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/fcmconfig.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/financial/financial_invoices_archive/finanical_invoice_archive_services.dart';
import 'package:project_after_update/modules/financial/financial_material/finance_material_services.dart';
import 'package:project_after_update/modules/manager/home/home_manager_services.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_in_managment_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Storage_in_managment_controller extends GetxController {
  Storage_in_managment_services services =
  Storage_in_managment_services(Get.find(),Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data = [];
  List test_data = [];
  late var price;
  get_all_material_in_center() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_material_in_center();
    test_data.addAll(response['data']);
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest && test_data.isNotEmpty) {
      data.clear();
      data.addAll(response['data']);
      print("response from get all section controller");
      print(data);
    } else if (test_data.isEmpty) {
      await Get.snackbar(
        "تنبيه",
        "لا يوجد مواد لعرضهم",
      );
    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد مواد لعرضهم",
      );
    } else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
  @override
  void onInit(){
    get_all_material_in_center();
    super.onInit();
  }
}
