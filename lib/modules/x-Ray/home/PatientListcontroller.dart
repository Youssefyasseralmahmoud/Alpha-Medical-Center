import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/x-Ray/home/patientlistService.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/function/handlingdata.dart';
import '../../../secure_storage/secure_storage.dart';

import '../AddVisit/completservic.dart';
import 'changestatuslabservic.dart';
import 'homeService.dart';
class  PatientListController extends GetxController{
  completvisit service2 = completvisit(Get.find());
  changstatusxray change =changstatusxray(Get.find());
  patientlistservice services = patientlistservice(Get.find());
  StatusRequest? statusRequest;
  StatusRequest? statusRequest2;
  StatusRequest? statusRequest5;
  late int id_typeservic;
  late String name;
  StatusRequest? statusRequest3;
  Secury_storage secury_storage = new Secury_storage();
  late int index ;
  //late String id_patient;
  //List test_data=[];
  List data_details=[];
  var data_details2=[];
   List data_details3 =[];

  var notificationCount = 0.obs;
  var isStoping = false.obs;
  get_patients(int id_type) async {
    statusRequest = StatusRequest.loading;
    update();

    var response = await services.get_allwaitrequest(id_type);

    //test_data.addAll(response['data']);
    // print("test daaaataaa is ${test_data}");
    statusRequest = handlingdata(response);

    if (StatusRequest.succes == statusRequest) {
      data_details.clear();
      data_details.addAll(response['data']) ;


    }

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
  changstatuslabbyidservic(int status) async {
    statusRequest3 = StatusRequest.loading;
    update();

    var response = await change.changstatuslabbyidservice(id_typeservic ,status);
    statusRequest3 = handlingdata(response);

    if (StatusRequest.succes == statusRequest3) {
      if(status==0){
        Get.defaultDialog(title: "", content: Text("تم إيقاف طلبات التحويل"));}
      else {
        Get.defaultDialog(title: "", content: Text("تم استئناف طلبات التحويل"));

      }


    }

    else if (StatusRequest.failure == statusRequest3) {
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
  copmpletvisit(var id)async{
    statusRequest5 = StatusRequest.loading;
    update();
    var respons2=  await service2.enter(id);
    var response = await service2.complete(id);

    statusRequest5 = handlingdata(response);

    if (StatusRequest.succes == statusRequest5)
      Get.defaultDialog(title: "", content: Text("تمت إزالة المريض من الدور"));
    else
      Get.defaultDialog(title: "", content: Text("حدث خطأ ما "));



  }

  @override
  onInit() {

    id_typeservic=Get.arguments['id_typeofservic'];
    name =Get.arguments['name_ofservic'];

    get_patients(id_typeservic);

    super.onInit();
  }

}