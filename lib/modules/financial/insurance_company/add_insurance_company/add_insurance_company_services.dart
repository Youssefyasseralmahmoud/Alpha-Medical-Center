import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/Crud.dart';
import 'package:project_after_update/core/class/crud_delete.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class Add_insurance_company_services {
  String bearer = "Bearer";
  Crud crud;

  Add_insurance_company_services(this.crud);
  Secury_storage secury = new Secury_storage();
  late var message;
  add_insurance_company(String Name,String IN,String AMB,String PM,String DV) async {
    String? token = await secury.read("finance_token");
    var response = await crud.postdata(Serverconfig.add_insurance_company, {
      "Name":"${Name.toString()}",
      "IN" : "${IN}",
      "AMB":"${AMB}",
      "PM" : "${PM}",
      "DV" : "${DV}",
    }, {
      "Authorization": bearer + " " + token.toString(),
      "Accept": "application/json"
    });
    print("message");
    print(response);
    message=response;
    return response.fold((l) => l, (r) => r);
  }


}