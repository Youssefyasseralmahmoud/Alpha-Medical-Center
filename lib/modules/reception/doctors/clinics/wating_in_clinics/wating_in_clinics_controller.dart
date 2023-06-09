import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/config/user_information.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/login/login_services.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/wating_in_clinics/wating_in_clinics_services.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details_services.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class wating_in_clincis_controller extends GetxController {
  wating_in_clinics_services services = wating_in_clinics_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  List test_data=[];

  get_all_doctors() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await services.get_all_doctors();
    test_data.addAll(response['data']) ;
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest&& test_data.isNotEmpty) {
      data.addAll(response['data']) ;
      print("response from patient controller");
      print(data);
      print(data[0]['username']);
    }
    else if(test_data.isEmpty) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد أطباء لعرضههم",
      );
    }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد أطباء لعرضههم",
      );
    }
    else {
      Get.defaultDialog(title: " خطأ", content: Text("حدث خطا ما"));
    }
    update();
  }
@override
  void onInit() {
    get_all_doctors();
  }
}
