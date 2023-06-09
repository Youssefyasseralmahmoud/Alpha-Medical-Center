import 'package:get/get.dart';

class Doctor_details_controller extends GetxController{
   int? id_doctor;
   int? id_doctor_to_show_res;



  goto_add_reservation(){
    Get.toNamed("/Add_reservation",arguments: {
      "id_doctor" : id_doctor.toString()
    });
  }
   goto_show_reservation(){
     Get.toNamed("/Reservations",arguments: {
       "id_doctor_to_show_res" : id_doctor_to_show_res.toString()
     });
   }
  @override
  void onInit() {
    id_doctor= Get.arguments["id_doctor"];
    id_doctor_to_show_res=Get.arguments["id_doctor"];
    print("from doctor details the id doctor is  ${id_doctor}");
  }
}