import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/crud_delete.dart';
import 'package:project_after_update/core/class/crud_get.dart';
import 'package:project_after_update/core/class/crud_put.dart';
import 'package:project_after_update/core/function/checkinternet.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';
import 'package:http/http.dart' as http;

class Storage_in_managment_services {
  String bearer = "Bearer";
  Crud_get crud;
  Crud_put crud_put;
  Storage_in_managment_services(this.crud, this.crud_put);
  Secury_storage secury = new Secury_storage();

  get_all_material_in_center() async {
    String? token = await secury.read("admin_token");

    var response = await crud.postdata(
        Serverconfig.get_all_material_in_center, {
      "Authorization": bearer + " " + token.toString(),
      "Accept": "application/json"
    });
    print("response from get all section services");
    print(response);
    return response.fold((l) => l, (r) => r);
  }

}
