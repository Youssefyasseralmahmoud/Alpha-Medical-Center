import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/config/user_information.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/login/login_services.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Patient_details_controller extends GetxController {
  Patient_details_services services = Patient_details_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
   late String id_patient;
  //List test_data=[];
   List data_details=[];
  GlobalKey<FormState> formstate= GlobalKey<FormState>();
  checkinput(){
    var formdata=formstate.currentState;
    if(formdata!.validate()){
      get_patient_details();
    }else{
      print("الحقول غير صالحة");
    }
  }



  get_patient_details() async {
    statusRequest = StatusRequest.loading;
    update();
    print("wwaaaarning ${id_patient}");
    var response = await services.get_patient_details(id_patient);

    //test_data.addAll(response['data']);
   // print("test daaaataaa is ${test_data}");
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      data_details.clear();
      data_details.addAll(response['data']) ;
      Get.toNamed("/patient_details");
    }
    // else if(test_data.isEmpty) {
    //   await Get.snackbar(
    //     "تحذير",
    //     "لا يوجد بيانات لعرضها",
    //   );
    //
    // }
    else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد بيانات لعرضها",
      );
    }
    else{
    Get.defaultDialog(title: "حدث خطأ ما", content: Text("حدث خطا ما"));
    }
    update();
  }
}
