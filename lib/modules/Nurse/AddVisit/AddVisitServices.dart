
import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/Crud.dart';
import 'package:project_after_update/core/class/crud_put.dart';
import 'package:project_after_update/secure_storage/secure_storage.dart';

class AddVisitServices{

  String bearer = "Bearer";
  Crud crud;
  AddVisitServices(this.crud);
  Secury_storage secury = new Secury_storage();
  late var message;
  visit_registration(int IDPatientRecord, String title, String ReferringPhysician,) async {
    String? token = await secury.read("admin_token");
    var response = await crud.postdata(Serverconfig.visit_registration, {
      "IDPatientRecord": "${IDPatientRecord}",
      "Title": "${title}",
      "ReferringPhysician": "${ReferringPhysician}"

    }, {
      "Authorization": bearer + " " + token.toString(),
      "Accept": "application/json"
    });
    print("message");
    print(response);
    message=response;
    return response.fold((l) => l, (r) => r);
  }

  // String bearer = "Bearer";
  // Crud_put crud;
  // AddVisitServices(this.crud);
  // Secury_storage secury = new Secury_storage();

  /////////////////////////////////////
  // String bearer = "Bearer";
  // Crud crud;
  // AddVisitServices(this.crud);
  // Secury_storage secury = new Secury_storage();
  // late var message;
  // visit_registration(String IDPatientRecord, String title, String ReferringPhysician,) async {
  //   String? token = await secury.read("admin_token");
  //   var response = await crud.postdata(Serverconfig.visit_registration, {
  //     "IDPatientRecord": "${IDPatientRecord}",
  //     "Title": "${title}",
  //     "ReferringPhysician": "${ReferringPhysician}"
  //
  //   }, {
  //     "Authorization": bearer + " " + token.toString(),
  //     "Accept": "application/json"
  //   });
  //   print("message");
  //   print(response);
  //   message=response;
  //   return response.fold((l) => l, (r) => r);
  // }
  // add_resault(String Pressure,String Heartbeat,String BodyHeat,String ClinicalStory,String ClinicalExamination,int id)async{
  //   //there is String id in parameters
  //   print(Pressure);
  //   print(Heartbeat);
  //   print(BodyHeat);
  //   print(ClinicalStory);
  //   print(ClinicalExamination);
  //   print(id);
  //   String? token = await secury.read("admin_token");
  //   print('token');
  //   print(token);
  //   var response=await crud.postdata(Serverconfig.add_preview_resault,{
  //     "id" :"${id}",
  //     "Pressure" : Pressure,
  //     "Heartbeat" : Heartbeat,
  //     "BodyHeat" :BodyHeat ,
  //     "ClinicalStory" :ClinicalStory ,
  //     "ClinicalExamination" :ClinicalExamination ,
  //   },
  //       {
  //         "Authorization": bearer + " " + token.toString(),
  //         "Accept": "application/json"
  //       }
  //   );
  //   print("this is login services  respoonse");
  //   print(response);
  //   return response.fold((l) => l, (r) => r);
  // }

}