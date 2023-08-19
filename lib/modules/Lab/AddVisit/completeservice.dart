import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/Crud.dart';

import '../../../core/class/StatusRequest.dart';
import '../../../core/class/crud_get.dart';
import '../../../core/class/crud_put.dart';
import '../../../secure_storage/secure_storage.dart';

class completvisit {
  Crud_put crud;
  completvisit(this.crud);
  Secury_storage secury = new Secury_storage();

  complete( int ID ) async {
    print('dddddddddddddd');
    print(ID);
    String? token = await secury.read("xray_token");
    var response = await crud.postdata('https://ultimatebyteos.com/api/completeRequiredPatientServices',
        {"RequiredPatientID": "${ID}",
        },
        {
          "Authorization": "Bearer" + " " + token.toString(),
          "Accept": "application/json"
        }
    );
    print(response);
    return response.fold((l) => l, (r) => r);
  }
  enter( int ID ) async {
    print('dddddddddddddd');
    print(ID);
    String? token = await secury.read("xray_token");
    var response = await crud.postdata('https://ultimatebyteos.com/api/enteringPatientToDoctor',
        {"RequiredPatientID": "${ID}",
        },
        {
          "Authorization": "Bearer" + " " + token.toString(),
          "Accept": "application/json"
        }
    );
    print(response);
    return response.fold((l) => l, (r) => r);
  }


}