
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/edit_clinics_type_in_managment/edit_clinics_type_services.dart';
import 'package:project_after_update/modules/manager/home/edit_section/edit_section_services.dart';
import 'package:project_after_update/modules/manager/home/finance_in_managment/edit_service_type_finance/edit_service_type_finance_services.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/edit_analysis_type_in_managnent/edit_analysis_type_services.dart';
import 'package:project_after_update/modules/manager/home/recption_in_managment/edit_service_type_reception/edit_service_type_rec_services.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/edit_xray_type_in_managment/edit_xray_type_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

/////////////////
class Edit_service_type_finance_controller extends GetxController {
  GlobalKey<FormState> formstate4 = GlobalKey<FormState>();
  late String name;
  late int id;
  late int id_section;
  Edit_service_type_finance_services services = Edit_service_type_finance_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  late var token;
  String? Function(String?)? valid;

  checkinput() {
    var formdata = formstate4.currentState;
    if (formdata!.validate()) {
      edit_type();
    } else {
      print("الحقول غير صالحة");
    }
  }

  edit_type() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.edit_type(id,id_section,name);

    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      await Get.snackbar(
        "تم التعديل بنجاح",
        "تمت عملية تعديل النوع  بنجاح",
      );
    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تنبيه",
        "لم يتم التعديل",
      );
    } else {
      Get.defaultDialog(title: " خطأ ", content: Text("حدث خطأ ما"));
    }
    update();
  }

  @override
  void onInit() {
    id = Get.arguments['id'];
    id_section=Get.arguments['id_section'];
    super.onInit();
  }
}