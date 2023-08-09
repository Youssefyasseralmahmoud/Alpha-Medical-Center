
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/core/function/handlingdata.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_visits/ambulance_patient_visits_details/ambulance_patient_visits_details_services.dart';
import 'package:project_after_update/modules/Nurse/EditVisitDetailsNures/EditVisitDetailsNuresServices.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class EditVisitDetailsNuresController extends GetxController {
  GlobalKey<FormState> formstate2 = GlobalKey<FormState>();
  late String Pressure;
  late String Heartbeat;
  late int BodyHeat;
  late String ClinicalStory;
  late String ClinicalExamination;
  late String comments;
  late String hint_Pressure=" ";
  late String hint_Heartbeat=" ";
  late String hint_BodyHeat=" ";
  late String hint_ClinicalStory=" ";
  late String hint_ClinicalExamination=" ";
  late String hint_comments=" ";
  late int id;
  EditVisitDetailsNuresServices services = EditVisitDetailsNuresServices(Get.find());
  StatusRequest? statusRequest;
  Secury_storage secury_storage = new Secury_storage();
  late var token;
  String? Function(String?)? valid;

  checkinput() {
    var formdata = formstate2.currentState;
    if (formdata!.validate()) {
      edit_result();
    } else {
      print("الحقول غير صالحة");
    }
  }

  edit_result() async {
    statusRequest = StatusRequest.loading;
    update();
    // Pressure ="rr";
    // Heartbeat="ff";
    // comments="grg";
    // ClinicalExamination="grg";
    // ClinicalStory="rg";
    // BodyHeat=37;
    print(id);

    var response = await services.edit_result(
        Pressure, Heartbeat, BodyHeat,
        ClinicalStory, ClinicalExamination, comments,id);
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      await Get.snackbar(
        "تم التعديل بنجاح",
        "تمت عملية تعديل المعاينة بنجاح",

      );
      print("done editor ");
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
    if (Get.arguments['Pressure']!=null)
      hint_Pressure = Get.arguments['Pressure'];
    if (Get.arguments['Heartbeat']!=null)
    hint_Heartbeat = Get.arguments['Heartbeat'];
    if (Get.arguments['BodyHeat']!=null)
    hint_BodyHeat = Get.arguments['BodyHeat'];
    if (Get.arguments['ClinicalStory']!=null)
    hint_ClinicalStory = Get.arguments['ClinicalStory'];
    if (Get.arguments['ClinicalExamination']!=null)
    hint_ClinicalExamination = Get.arguments['ClinicalExamination'];
    if (Get.arguments['Comments']!=null)
    hint_comments = Get.arguments['Comments'];
    id =Get.arguments['id'];

    // Pressure =hint_Pressure;
    // Heartbeat =hint_Heartbeat;
    // BodyHeat= int.parse(hint_BodyHeat);
    // ClinicalExamination = hint_ClinicalExamination;
    // ClinicalStory = hint_ClinicalStory;
    // comments = hint_comments;




    super.onInit();
  }

}
