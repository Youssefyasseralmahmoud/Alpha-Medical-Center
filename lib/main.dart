import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/GetxBindings/Lab/AddVisitlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Editvisitlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Homelabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/VisitListlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Warehoselabbinding.dart';
import 'package:project_after_update/GetxBindings/Nurse/AddVisitBinding.dart';
import 'package:project_after_update/GetxBindings/Nurse/EditVisitNurseBinding.dart';
import 'package:project_after_update/GetxBindings/Nurse/HomeBinding.dart';
import 'package:project_after_update/GetxBindings/Nurse/VisitsListBinding.dart';
import 'package:project_after_update/GetxBindings/Nurse/warehouseBindings.dart';
import 'package:project_after_update/GetxBindings/X_Ray/Addvisitbinding.dart';
import 'package:project_after_update/GetxBindings/X_Ray/Editvisitx_raybinding.dart';
import 'package:project_after_update/GetxBindings/X_Ray/homeX_rayBinding.dart';
import 'package:project_after_update/GetxBindings/X_Ray/visitlistx_raybinding.dart';
import 'package:project_after_update/GetxBindings/X_Ray/warehouseBindingsx_ray.dart';
import 'package:project_after_update/GetxBindings/doctor/EditVisitBinding.dart';
import 'package:project_after_update/GetxBindings/doctor/homeBinding.dart';
import 'package:project_after_update/GetxBindings/doctor/patientVisitRecordBinding.dart';
import 'package:project_after_update/binding/bindings.dart';
import 'package:project_after_update/modules/Ambulance/add_result/add_result.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_details/ambulance_patient_ddetails.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_details/ambulance_visit_registration/ambulance_visit_registration.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_visits/ambulance_patient_visits_details/Edit_perview_result/edit_preview_result.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_visits/ambulance_patient_visits_details/ambulance_patient_visits_details.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_visits/ambulance_patients_visits.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/ambulance_patients_visits/edit_visit/edit_visit.dart';
import 'package:project_after_update/modules/Ambulance/ambulance_patients/convert_request_in_abmulance/convert_request_in_ambulance.dart';
import 'package:project_after_update/modules/Ambulance/home/home_ambulance.dart';
import 'package:project_after_update/modules/Ambulance/home/home_screen_ambulance.dart';
import 'package:project_after_update/modules/Ambulance/request_consumable/request_consumable.dart';
import 'package:project_after_update/modules/Lab/AddVisit/Addvistlab.dart';
import 'package:project_after_update/modules/Lab/EditVistlab/EditVisitlab.dart';
import 'package:project_after_update/modules/Lab/VisitListLab/PersonalInformationlab.dart';
import 'package:project_after_update/modules/Lab/VisitListLab/VisitsListlab.dart';
import 'package:project_after_update/modules/Lab/funcybarlab.dart';
import 'package:project_after_update/modules/Lab/home/homelab.dart';
import 'package:project_after_update/modules/Nurse/AddVisit/AddVisit.dart';
import 'package:project_after_update/modules/Nurse/EditVisitNurse/EditVisitNurse.dart';
import 'package:project_after_update/modules/Nurse/Home/homeNurse.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/PersonalInformation.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/VisitsList.dart';
import 'package:project_after_update/modules/Nurse/funcybarNurse.dart';
import 'package:project_after_update/modules/Nurse/warehouse/addConsumer.dart';
import 'package:project_after_update/modules/Nurse/warehouse/warehouseProducts.dart';
import 'package:project_after_update/modules/doctor/EditVisit/EditVisit.dart';
import 'package:project_after_update/modules/doctor/Home/home.dart';
import 'package:project_after_update/modules/doctor/bookings/DoctorBooking.dart';
import 'package:project_after_update/modules/doctor/funcy.dart';
import 'package:project_after_update/modules/doctor/record/PersonalInformationD.dart';
import 'package:project_after_update/modules/doctor/record/doctorDitailes.dart';
import 'package:project_after_update/modules/doctor/record/patientVisitRecord.dart';
import 'package:project_after_update/modules/login/login.dart';
import 'package:project_after_update/modules/manager/employee/employee.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/Clinics_details_in_managment/Clinics_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/add_clinics/add_clinics.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/clinics_in_managment.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/doctors_details_in_managment/doctors_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/home_manager.dart';
import 'package:project_after_update/modules/manager/home/home_screen_manager.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/add_analysis/add_analysis.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_in_managment.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_deatils_in_managment/storage_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_in_managment.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/add_x_ray/add_x_ray.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/x_ray_in_managment.dart';
import 'package:project_after_update/modules/manager/join_request/join_request.dart';
import 'package:project_after_update/modules/manager/patients/patient_details_in_managment/patient_details_in_managment.dart';
import 'package:project_after_update/modules/manager/patients/patients_in_managment.dart';
import 'package:project_after_update/modules/manager/patients/patients_visits_in_managment/patient_visits_in_managment.dart';
import 'package:project_after_update/modules/manager/salary_increase/salary_increase.dart';
import 'package:project_after_update/modules/reception/add_record/add_record.dart';
import 'package:project_after_update/modules/reception/add_record/previous_medical_condition/add_previous_medical_condition.dart';
import 'package:project_after_update/modules/reception/center_services/center_services.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/add_reservation/add_reservation.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/clinics.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/reservations/edit_reservation/edit_reservation.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/reservations/reservations.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/wating_in_clinics/wating_in_clinics.dart';
import 'package:project_after_update/modules/reception/doctors/doctors.dart';
import 'package:project_after_update/modules/reception/doctors/doctors_details.dart';
import 'package:project_after_update/modules/reception/home/home_reception.dart';
import 'package:project_after_update/modules/reception/home/home_screen_reception.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_reserv/laboratory_reserv.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/wating_in_laboratory.dart';
import 'package:project_after_update/modules/reception/notification/notification.dart';
import 'package:project_after_update/modules/reception/patient/convert_request/convert_request.dart';
import 'package:project_after_update/modules/reception/patient/patient.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details.dart';
import 'package:project_after_update/modules/reception/patient/patient_services/patient_services.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/patient_visits_details.dart';
import 'package:project_after_update/modules/signup/signup.dart';
import 'package:project_after_update/modules/x-Ray/AddVisit/Addvistx_ray.dart';
import 'package:project_after_update/modules/x-Ray/EditVisitX_ray/EditVisitNurse.dart';
import 'package:project_after_update/modules/x-Ray/VisitsListsX_Ray/PersonalInformationX_Ray.dart';
import 'package:project_after_update/modules/x-Ray/VisitsListsX_Ray/VisitsListX_Ray.dart';
import 'package:project_after_update/modules/x-Ray/home/homeX-Ray.dart';
import 'package:project_after_update/modules/x-Ray/warehose/addConsumer.dart';
import 'package:project_after_update/modules/x-Ray/warehose/funcybarX-ray.dart';
import 'package:project_after_update/modules/x-Ray/warehose/warehouseProducts.dart';


import 'GetxBindings/store/store_materialeBinding.dart';
import 'modules/Lab/VisitListLab/detalisvistlab.dart';
import 'modules/Lab/Warehose/addConsumer.dart';
import 'modules/Lab/Warehose/warehouseProductslab.dart';
import 'modules/Lab/home/listlab.dart';
import 'modules/store/Orders/dep_order.dart';
import 'modules/store/home_store/Details.dart';
import 'modules/store/home_store/add_details.dart';
import 'modules/store/home_store/archives.dart';
import 'modules/store/home_store/home_screen_store.dart';
import 'modules/store/matireials/Pharmaceutical.dart';
import 'modules/x-Ray/VisitsListsX_Ray/detailsofvisit.dart';
import 'modules/x-Ray/home/List.dart';
import 'splash_screen/splash_screen.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  print('kajbckbsack');
  await Firebase.initializeApp();
   print('Firevbase ddone');
  FirebaseMessaging messaging=FirebaseMessaging.instance;
  String? token =await messaging.getToken();
  print("======================firbasetoken======================");
  print(token);
  print("=========================================================");
  messaging.onTokenRefresh.listen((String? newtoken) {
    print("toooken refreched ......... ${newtoken}");
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      initialRoute:'/login',
      getPages: [
        GetPage(name: '/login', page: () =>  Login()),
        GetPage(name: '/signup', page: () => Signup()),
        GetPage(name: '/home_reception', page: () => Home_reception()),
        GetPage(name: '/home_screen_reception', page: () => Home_screen_reception()),
        GetPage(name: '/doctors', page: () => Doctors()),
        GetPage(name: '/doctors_details', page: () => Doctors_details()),
        GetPage(name: '/add_record', page: () => Add_record()),
        GetPage(name: '/patient', page: () => Patient()),
        GetPage(name: '/Center_services', page: () => Center_services()),
        GetPage(name: '/patient_details', page: () => Patient_details()),
        GetPage(name: '/patient_visits', page: () => Patient_Visits()),
        GetPage(name: '/patient_services', page: () => Patient_services()),
        GetPage(name: '/wating_in_laboratory', page: () => Wating_in_laboratory()),
        GetPage(name: '/wating_in_clinics', page: () => Wating_in_clinics()),
        GetPage(name: '/notification', page: () => Notifications()),
        GetPage(name: '/convert_request', page: () => Convert_request()),
        GetPage(name: '/clinics', page: () => Clinics()),
        GetPage(name: '/home_ambulance', page: () => Home_ambulance()),
        GetPage(name: '/home_screen_ambulance', page: () => Home_screen_ambulance()),
        GetPage(name: '/ambulance_patient', page: () => Ambulance_patients()),
        GetPage(name: '/Request_consumable', page: () => Request_consumable()),
        GetPage(name: '/Ambulance_patients_details', page: () => Ambulance_patients_details()),
        GetPage(name: '/Convert_request_in_ambulance', page: () => Convert_request_in_ambulance()),
        GetPage(name: '/add_result', page: () => Add_result()),
        GetPage(name: '/Ambulance_patients_visits', page: () => Ambulance_patients_visits()),
        GetPage(name: '/Add_reservation', page: () => Add_reservation()),
        GetPage(name: '/Reservations', page: () => Reservations()),
        GetPage(name: '/Splash_screen', page: () => Splash_screen()),
        GetPage(name: '/Laboratory_reserv', page: () => Laboratory_reserv()),
        GetPage(name: '/Home_screen_manager', page: () => Home_screen_manager()),
        GetPage(name: '/Home_manager', page: () => Home_manager()),
        GetPage(name: '/Join_request', page: () => Join_request()),
        GetPage(name: '/Employee', page: () => Employee()),
        GetPage(name: '/Patients_in_managment', page: () => Patients_in_managment()),
        GetPage(name: '/Clinics_in_managment', page: () => Clinics_in_managment()),
        GetPage(name: '/Clinics_details_in_managment', page: () => Clinics_details_in_managment()),
        GetPage(name: '/Doctors_details_in_managment', page: () => Doctors_details_in_managment()),
        GetPage(name: '/Add_clinics', page: () => Add_clinics()),
        GetPage(name: '/Laboratory_in_managment', page: () =>   Laboratory_in_managment()),
        GetPage(name: '/Add_analysis', page: () =>   Add_analysis()),
        GetPage(name: '/X_ray_in_managment', page: () =>   X_ray_in_managment()),
        GetPage(name: '/Add_x_ray', page: () =>   Add_x_ray()),
        GetPage(name: '/Salary_increase', page: () =>   Salary_increase()),
        GetPage(name: '/Storage_in_managment', page: () =>   Storage_in_managment()),
        GetPage(name: '/Storage_details_in_managment', page: () =>   Storage_details_in_managment()),
        GetPage(name: '/Patient_details_in_managment', page: () =>   Patient_details_in_managment()),
        GetPage(name: '/Patient_Visits_in_managment', page: () =>   Patient_Visits_in_managment()),
        GetPage(name: '/Patient_visits_details', page: () =>   Patient_visits_details()),
        GetPage(name: '/Ambulance_Patient_visits_details', page: () =>   Ambulance_Patient_visits_details()),
        GetPage(name: '/Edit_preview_result', page: () =>   Edit_preview_result()),
        GetPage(name: '/Add_Previous_medical_cond', page: () =>      Add_Previous_medical_cond()),
        GetPage(name: '/Edit_reservation', page: () =>      Edit_reservation()),
        GetPage(name: '/Ambulance_visit_registration', page: () =>      Ambulance_visit_registration()),
        GetPage(name: '/Edit_visit', page: () =>      Edit_visit()),




        /////////////
        GetPage(name: '/HomeNurse',            page: () =>homeNurse(),          binding:HomeNurseBinding()),
        GetPage(name: '/AddVisit',             page: () =>AddVisit(),           binding:AddVisitBinding()),
        GetPage(name: '/VisitsListNurse',      page: () =>VisitsList(),         binding:VisitsListBinding()),
        GetPage(name: '/EditVisitNurse',       page: () =>EditVisitNurse(),     binding:EditVisitNurseBinding()),
        GetPage(name: '/PersonalInformationN', page: () =>PersonalInformation(),binding:VisitsListBinding()),
        GetPage(name: '/addConsumer',          page: () => AddConsumer(),        binding:WarehouseBindinds()),
        GetPage(name: '/warehouseProducts',    page: () => WarehouseProducts(),  binding:WarehouseBindinds()),

        GetPage(name: '/FancyNavBarNurse',    page: () =>FancyNavBarNurse()),


/////////////////////////////////////////////////////////////////////////////////////////////////
        GetPage(name: '/HomeDoctor',           page: () =>Home(),                 binding:HomeDoctorBinding()),
        GetPage(name: '/patientVisitRecord',   page: () =>patientVisitRecord(),   binding:patientVisitRecordBinding()),
        GetPage(name: '/PersonalInformationD', page: () =>PersonalInformationD(), binding:patientVisitRecordBinding()),
        GetPage(name: '/DoctorDitailes',       page: () =>DoctorDitailes(),       binding:patientVisitRecordBinding()),
        GetPage(name: '/EditVisitDoctor',      page: () =>EditVisit(),            binding:EditVisitBinding()),
      //  GetPage(name: '/DoctorBooking',        page: () =>DoctorBooking(),   ),

/////////////////////////////////////////////////////////////////////////////////////
        GetPage(name: '/List',            page: () =>List(),),
        GetPage(name: '/FancyNavBarx_ray',    page: () =>FancyNavBarx_ray(),binding: homex_rayBinding()),
        GetPage(name: '/Addvisitx_ray',             page: () =>Addvisitx_ray (),binding: AddvisitaX_raybinding () ),
        GetPage(name: '/PersonalInformationx_ray',             page: () =>PersonalInformationx_ray (),),
        GetPage(name: '/VisitsListX_Ray',             page: () =>VisitsListX_Ray (),binding: VisitListX_raybinding() ),
        GetPage(name: '/EditVisitx_ray',             page: () =>EditVisitx_ray (),binding: Editvisitingx_raybinding() ),
        GetPage(name: '/addConsumer',          page: () =>addConsumer(),        binding:warehouseBindinds()),
        GetPage(name: '/warehouseProducts',    page: () =>warehouseProducts(),  binding:warehouseBindinds()),
        GetPage(name: '/detailvistexray',    page: () =>DetailVistexrayPage(),),

        /////////last adding for lab by saly
        GetPage(name: '/Listlab',            page: () =>Mylistlab(),),
        GetPage(name: '/homelab',            page: () =>homelab(),binding: homelabBinding()),
        GetPage(name: '/FancyNavBarlab',    page: () =>FancyNavBarlab()),
        GetPage(name: '/Addvisitlab',             page: () =>Addvisitlab (),binding: Addvisitalabbinding () ),
        GetPage(name: '/PersonalInformationlab',             page: () =>PersonalInformationlab (), ),
        GetPage(name: '/VisitsListlab',             page: () =>VisitsListlab (),binding: VisitListelabBinding() ),
        GetPage(name: '/EditVisitlab',             page: () =>EditVisitlab (),binding: EditVisitlabBinding() ),
        GetPage(name: '/addConsumerlab',          page: () =>addConsumerlab(),        binding:warehouselabbinding()),
        GetPage(name: '/warehouseProductslab',    page: () =>WarehouseProductslab(),  binding:warehouselabbinding()),
        GetPage(name: '/detailvistelab',    page: () => DetailVisteLabPage (),),
        GetPage(name: '/Home_screen_store',    page: () =>Home_screen_store(),binding:stormaaterialBindinds()),
        GetPage(name: '/Pharmaceutical',    page: () =>Pharmaceutical()),
        GetPage(name: '/dep_order',    page: () =>dep_order()),
        GetPage(name: '/orders_from_warehouse',    page: () =>orders_from_warehouse()),
        GetPage(name: '/Details',    page: () =>Details()),
        GetPage(name: '/add_Details',    page: () =>add_Details ()),














      ],
    );
  }
}
