import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/Crud.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/class/crud_get.dart';
import '../../../secure_storage/secure_storage.dart';


class Doctor_home_services {
  Crud_get crud;

  Secury_storage secury = new Secury_storage();
  Doctor_home_services (this.crud);
  String? token ;
  get_allwaitingPatient(int id_types_of_center_services)async{

    String? token = await secury.read("admin_token");
    var response=await crud.postdata(Serverconfig.get_All_Wait_Request_ByType_Center_Services+'?types_of_center_services_id=${id_types_of_center_services}',
        {
          "Authorization": "Bearer" + " " + token.toString(),
          "Accept": "application/json"
        }
    );

    return response.fold((l) => l, (r) => r);
  }
}