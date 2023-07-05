import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../models/recerptions/patient_details_model.dart';
import 'PersonallinformationServec.dart';
class VisitsListlabController extends GetxController{
  var showDetails = false.obs;
  var id;
  var Id_personal   ;
  String? name;
  var  age ;
  var  phon;
  var  address;
  var num = 025451648162;
  PatientDetailsModel model = PatientDetailsModel(code :1, data: [], msg: '');

  PersonalInformationService personalInformationService= PersonalInformationService();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();}
  @override
  void onReady() async {
    // TODO: implement onReady

    model =  await personalInformationService.getPatientDetails(num);
    print(model.data[0].fullName);
    super.onReady();
  }

  void toggleDetails() {
    showDetails.value = !showDetails.value;
  }

  RxDouble imageSize = 100.0.obs;

  void changeImageSize(double scale) {
    imageSize.value = 100 * scale.clamp(0.5, 2.0);
  }

  void resetImageSize() {
    imageSize.value = 100.0;
  }
  var makhbar=true.obs;

  }



