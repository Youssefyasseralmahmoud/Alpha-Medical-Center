import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_details/ambulance_patient_details_services.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Ambulance_Patient_details_controller extends GetxController {
  Ambulance_Patient_details_services services = Ambulance_Patient_details_services(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  List data=[];
  late String id_patient;
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
    print("statuserequest now is ${statusRequest}");
    var response = await services.get_patient_details(id_patient);

    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      data.clear();
      data.addAll(response['data']) ;
      Get.toNamed("/Ambulance_patients_details");
    } else if (StatusRequest.failure == statusRequest) {
      await Get.snackbar(
        "تحذير",
        "لا يوجد بيانات لعرضها",
      );
    } else {
      Get.defaultDialog(title: "حدث خطأ ما", content: Text("حدث خطا ما"));
    }
    update();
  }
}
