import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'addvisitservice.dart';
class Addvisitcontrollerlab extends GetxController
{
  var details ;
  var lab_type ;
  var path ;
  var signinstatus =false;
  var textEditingController = TextEditingController();
  var errorText = ''.obs;
  var message ;
  uploadX_ray service = uploadX_ray();
  void validate(String value, String Function(String) validator) {
    errorText.value = validator(value);
  }


  var text =''.obs;


    Future <void> uploadonclick() async{

      signinstatus = await service.upload(path);
      message=service.message;
      if(message is List){
        String temp='';
        for(String s in message){
          temp+=s +'\n';
          message=temp;
        }
      }

  }




}