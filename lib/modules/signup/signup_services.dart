import 'package:project_after_update/config/server_config.dart';
import 'package:project_after_update/core/class/Crud.dart';

class register_services{
  Crud crud;
  register_services(this.crud);

  register(String username,String password,String name,String surname,String conf_pass,String email,String type)async{
    var response=await crud.postdata(Serverconfig.register,{
      "name" :name,
      "surname" :surname,
      "username" :username,
      "email" :email,
      "password" : password,
      "password_confirmation" :conf_pass,
      "type" :type

    },
        {
          "Accept" : "application/json"
        }
    );
    print("this is regiser services  respoonse");
    print(response);
    return response.fold((l) => l, (r) => r);
  }
}