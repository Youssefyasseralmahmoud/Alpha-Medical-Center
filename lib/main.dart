import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/GetxBindings/Lab/AddVisitlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Editvisitlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Homelabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/VisitListlabbinding.dart';
import 'package:project_after_update/GetxBindings/Lab/Warehoselabbinding.dart';

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
import 'package:project_after_update/modules/Nurse/EditVisitDetailsNures/EditVisitDetailsNures.dart';
import 'package:project_after_update/modules/Nurse/EditVisitNurse/EditVisitNurse.dart';
import 'package:project_after_update/modules/Nurse/Home/homeNurse.dart';
import 'package:project_after_update/modules/Nurse/Nures_patiient_services_list/Nures_patiient_services_list.dart';
import 'package:project_after_update/modules/Nurse/Nurse_wait_patient/Nurse_wait_patient.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/Nurse_visit_ditails/Nurse_visit_ditails.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/PersonalInformation/PersonalInformation.dart';
import 'package:project_after_update/modules/Nurse/VisitsList/VisitsList.dart';
import 'package:project_after_update/modules/Nurse/funcybarNurse.dart';
import 'package:project_after_update/modules/Nurse/warehouse/addConsumer.dart';
import 'package:project_after_update/modules/Nurse/warehouse/warehouseProducts.dart';
import 'package:project_after_update/modules/doctor/Doctor_patient_servies/Doctor_patient_servies.dart';
import 'package:project_after_update/modules/doctor/EditVisit/EditVisit.dart';
import 'package:project_after_update/modules/doctor/Home/home.dart';
import 'package:project_after_update/modules/doctor/bookings/DoctorBooking.dart';
import 'package:project_after_update/modules/doctor/funcy.dart';
import 'package:project_after_update/modules/doctor/record/PersonalInformationD.dart';
import 'package:project_after_update/modules/doctor/record/doctorDitailes.dart';
import 'package:project_after_update/modules/doctor/record/patientVisitRecord.dart';
import 'package:project_after_update/modules/financial/Payments_and_Receipts/Payments_and_Receipts.dart';
import 'package:project_after_update/modules/financial/financial_home/financial_home.dart';
import 'package:project_after_update/modules/financial/financial_invoices_archive/financial_invoices_archive.dart';
import 'package:project_after_update/modules/financial/financial_material/financial_material.dart';
import 'package:project_after_update/modules/financial/maintenance/maintenance.dart';
import 'package:project_after_update/modules/financial/navigationBar_financial.dart';
import 'package:project_after_update/modules/financial/sections/financial_Clinic.dart';
import 'package:project_after_update/modules/financial/sections/financial_Clinic_incoming_material/financial_Clinic_incoming_material.dart';
import 'package:project_after_update/modules/financial/sections/financial_sections.dart';
import 'package:project_after_update/modules/financial/waiting_from_reception/InvoicePage.dart';
import 'package:project_after_update/modules/financial/waiting_from_reception/waiting_from_reception.dart';
import 'package:project_after_update/modules/login/login.dart';
import 'package:project_after_update/modules/manager/employee/employee.dart';
import 'package:project_after_update/modules/manager/home/Setting_managment.dart';
import 'package:project_after_update/modules/manager/home/ambulance_in_managment/add_service_type_inambulance/add_service_type_for_ambulance.dart';
import 'package:project_after_update/modules/manager/home/ambulance_in_managment/ambulance_in_managment.dart';
import 'package:project_after_update/modules/manager/home/ambulance_in_managment/details_user_in_ambulance/details_user_in_ambulance.dart';
import 'package:project_after_update/modules/manager/home/ambulance_in_managment/edit_service_type_ambulance/edit_service_type_ambulance.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/Clinics_details_in_managment/Clinics_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/Clinics_details_in_managment/add_clinics_services/add_clinics_service.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/Clinics_details_in_managment/edit_clinics_services/edit_clinics_service.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/add_clinics/add_type_clinics.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/clinics_in_managment.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/doctors_details_in_managment/doctors_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/clinics_in_managment/edit_clinics_type_in_managment/edit_clinics_type.dart';
import 'package:project_after_update/modules/manager/home/edit_section/edit_section_controller.dart';
import 'package:project_after_update/modules/manager/home/edit_section/edit_the_section.dart';
import 'package:project_after_update/modules/manager/home/home_manager.dart';
import 'package:project_after_update/modules/manager/home/home_screen_manager.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/add_analysis/add_analysis_type.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/edit_analysis_type_in_managnent/edit_analysis_type.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_center_services/add_laboratory_services/add_laboratory_services.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_center_services/doctors_details_in_laboratory/doctors_details_in_laboratory.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_center_services/edit_laboratory_service/edit_laboratory_service.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_center_services/laboratory_center_services.dart';
import 'package:project_after_update/modules/manager/home/laboratory_in_managment/laboratory_in_managment.dart';
import 'package:project_after_update/modules/manager/home/new_section/add_new_section.dart';
import 'package:project_after_update/modules/manager/home/notification_manager/notification_manager.dart';
import 'package:project_after_update/modules/manager/home/profile_info_managment/edit_profile_info_managment/edit_profile_info_managment.dart';
import 'package:project_after_update/modules/manager/home/recption_in_managment/add_service_type_for_reception/add_service_type_for_reception.dart';
import 'package:project_after_update/modules/manager/home/recption_in_managment/details_of_users/details_of_user.dart';
import 'package:project_after_update/modules/manager/home/recption_in_managment/dispaly_users_in_reception.dart';
import 'package:project_after_update/modules/manager/home/recption_in_managment/edit_service_type_reception/edit_service_type_reception.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_deatils_in_managment/storage_details_in_managment.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_in_managment.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/add_x_ray/add_x_ray_type.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/edit_xray_type_in_managment/edit_xray_type.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/x_ray_in_managment.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/xray_center_services/add_xray_services/add_xray_services.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/xray_center_services/doctors_details_in_xray.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/xray_center_services/edit_xray_service/edit_xray_service.dart';
import 'package:project_after_update/modules/manager/home/x_ray_in_managment/xray_center_services/xray_center_services.dart';
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
import 'package:project_after_update/modules/reception/doctors/clinics/reservations/patient_details/patient_details.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/reservations/reservations.dart';
import 'package:project_after_update/modules/reception/doctors/clinics/wating_in_clinics/wating_in_clinics.dart';
import 'package:project_after_update/modules/reception/doctors/doctors.dart';
import 'package:project_after_update/modules/reception/doctors/doctors_details.dart';
import 'package:project_after_update/modules/reception/home/home_reception.dart';
import 'package:project_after_update/modules/reception/home/home_screen_reception.dart';
import 'package:project_after_update/modules/reception/home/profile_info/edit_profile_info/edit_profile_info.dart';
import 'package:project_after_update/modules/reception/home/profile_info/profile_info.dart';
import 'package:project_after_update/modules/reception/home/setting/setting.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_reserv/laboratory_reserv.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_service_type/laboratory_service/laboratory_service.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_service_type/laboratory_service_type.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/wating_in_laboratory.dart';
import 'package:project_after_update/modules/reception/notification/notification.dart';
import 'package:project_after_update/modules/reception/patient/convert_request/convert_request.dart';
import 'package:project_after_update/modules/reception/patient/patient.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/edit_previous_medical_condition/edit_previous_medical.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/patient_details_from_search.dart';
import 'package:project_after_update/modules/reception/patient/patient_details/visit_ergisteration/visit_register_in_reception.dart';
import 'package:project_after_update/modules/reception/patient/patient_services/patient_services.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/lab_result_in_visit_details/lab_result_in_visit_details.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/patient_visits_details.dart';
import 'package:project_after_update/modules/reception/patient/patient_visits/patient_visits_details/xray_in_visit_details/xray_in_visite_details.dart';
import 'package:project_after_update/modules/reception/xray_in_reception/wating_in_xray.dart';
import 'package:project_after_update/modules/reception/xray_in_reception/xray_service_type/xray_service/xray_service.dart';
import 'package:project_after_update/modules/reception/xray_in_reception/xray_service_type/xray_service_type.dart';
import 'package:project_after_update/modules/signup/signup.dart';
import 'package:project_after_update/modules/x-Ray/AddVisit/Addvistx_ray.dart';
import 'package:project_after_update/modules/x-Ray/EditVisitX_ray/EditVisitNurse.dart';
import 'package:project_after_update/modules/x-Ray/VisitsListsX_Ray/PersonalInformationX_Ray.dart';
import 'package:project_after_update/modules/x-Ray/VisitsListsX_Ray/VisitsListX_Ray.dart';
import 'package:project_after_update/modules/x-Ray/home/homeX-Ray.dart';
import 'package:project_after_update/modules/x-Ray/warehose/addConsumer.dart';
import 'package:project_after_update/modules/x-Ray/warehose/funcybarX-ray.dart';
import 'package:project_after_update/modules/x-Ray/warehose/warehouseProducts.dart';
import 'modules/manager/home/profile_info_managment/profilr_info_managment.dart';
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
        //START YOUSSEF
        GetPage(name: '/login', page: () =>  Login()),
        GetPage(name: '/signup', page: () => Signup()),
        GetPage(name: '/home_reception', page: () => Home_reception()),
        GetPage(name: '/home_screen_reception', page: () => Home_screen_reception()),
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
        GetPage(name: '/Edit_Previous_medical_cond', page: () =>      Edit_Previous_medical_cond()),
        GetPage(name: '/Add_new_section', page: () =>      Add_new_section()),
        GetPage(name: '/Edit_section', page: () =>      Edit_section()),
        GetPage(name: '/Edit_clinics_type', page: () =>      Edit_clinics_type()),
        GetPage(name: '/Edit_analysis_type', page: () =>      Edit_analysis_type()),
        GetPage(name: '/Edit_xray_type', page: () =>      Edit_xray_type()),
        GetPage(name: '/Laboratory_center_services', page: () =>      Laboratory_center_services()),
        GetPage(name: '/Xray_center_services', page: () =>      Xray_center_services()),
        GetPage(name: '/Add_clinics_service', page: () =>      Add_clinics_service()),
        GetPage(name: '/Add_laboratory_service', page: () =>      Add_laboratory_service()),
        GetPage(name: '/Add_xray_service', page: () =>      Add_xray_service()),
        GetPage(name: '/Doctors_details_in_laboratory', page: () =>      Doctors_details_in_laboratory()),
        GetPage(name: '/Doctors_details_in_xray', page: () =>      Doctors_details_in_xray()),
        GetPage(name: '/Edit_clinics_service', page: () =>      Edit_clinics_service()),
        GetPage(name: '/Edit_laboratory_service', page: () =>      Edit_laboratory_service()),
        GetPage(name: '/Edit_xray_service', page: () =>      Edit_xray_service()),
        GetPage(name: '/Reception_visit_registration', page: () =>      Reception_visit_registration()),
        GetPage(name: '/Laboratory_service_type', page: () =>      Laboratory_service_type()),
        GetPage(name: '/Laboratory_service', page: () =>      Laboratory_service()),
        GetPage(name: '/Wating_in_xray', page: () =>      Wating_in_xray()),
        GetPage(name: '/Xray_service_type', page: () =>      Xray_service_type()),
        GetPage(name: '/Xray_service', page: () =>      Xray_service()),
        GetPage(name: '/Xray_in_visit_details', page: () =>      Xray_in_visit_details()),
        GetPage(name: '/reception_in_managment', page: () =>      Display_users_in_reception()),
        GetPage(name: '/details_user', page: () =>      Details_of_user()),
        GetPage(name: '/Add_service_type_for_reception', page: () =>      Add_service_type_for_reception()),
        GetPage(name: '/Edit_service_type_reception', page: () =>      Edit_service_type_reception()),
        GetPage(name: '/Ambulance_in_managment', page: () =>      Ambulance_in_managment()),
        GetPage(name: '/Add_service_type_for_ambulance', page: () =>      Add_service_type_for_ambulance()),
        GetPage(name: '/Edit_service_type_ambulance', page: () =>      Edit_service_type_ambulance()),
        GetPage(name: '/Details_of_user_ambulance', page: () =>      Details_of_user_ambulance()),
        GetPage(name: '/Lab_result_in_visit_details', page: () =>      Lab_result_in_visit_details()),
        GetPage(name: '/Patient_details_reserv', page: () =>      Patient_details_reserv()),
        GetPage(name: '/Setting', page: () =>      Setting()),
        GetPage(name: '/Setting_managment', page: () =>      Setting_managment()),
        GetPage(name: '/Profile_info_reception', page: () =>      Profile_info_reception()),
        GetPage(name: '/Profile_info_managment', page: () =>      Profile_info_managment()),
        GetPage(name: '/Patient_details_from_search', page: () =>      Patient_details_from_search()),
        GetPage(name: '/Notifications_manager', page: () =>      Notifications_manager()),
        GetPage(name: '/EDit_profile_info', page: () =>      EDit_profile_info()),
        GetPage(name: '/EDit_profile_info_managment', page: () =>      EDit_profile_info_managment()),



        ///////////// END YOUSSEF

        GetPage(name: '/HomeNurse',            page: () =>homeNurse(),          binding:HomeNurseBinding()),
        GetPage(name: '/VisitsListNurse',      page: () =>VisitsList(),         ),
        GetPage(name: '/EditVisitNurse',       page: () =>EditVisitNurse(),     binding:EditVisitNurseBinding()),
        GetPage(name: '/PersonalInformationN', page: () =>PersonalInformation(),binding:VisitsListBinding()),
        GetPage(name: '/addConsumer_nurse',          page: () => addConsumerNurse(),        ),//binding:WarehouseBindindsN),
        GetPage(name: '/warehouseProducts_nurse',    page: () => Nurse_warehouseProducts(), ),// binding:WarehouseBindinds()),
        GetPage(name: '/Nurse_visit_ditails',        page: () =>Nurse_visit_ditails()),
        GetPage(name: '/EditVisitDetailsNures',      page: () =>EditVisitDetailsNures()),
        GetPage(name: '/FancyNavBarNurse',            page: () =>FancyNavBarNurse()),
        GetPage(name: '/Nures_patiient_services_list',     page: () =>Nures_patiient_services_list()),
        GetPage(name: '/Nurse_wait_patient',               page: () =>Nurse_wait_patient()),

        GetPage(name: '/FancyNavBarNurse',    page: () =>FancyNavBarNurse()),

//////////////////////////////////////////////////////////////////////////////////////////////////
        GetPage(name: '/HomeDoctor',           page: () =>Home(),                 binding:HomeDoctorBinding()),
        GetPage(name: '/patientVisitRecord',   page: () =>patientVisitRecord(),   binding:patientVisitRecordBinding()),
        GetPage(name: '/PersonalInformationD', page: () =>PersonalInformationD(), binding:patientVisitRecordBinding()),
        GetPage(name: '/DoctorDitailes',       page: () =>DoctorDitailes(),       binding:patientVisitRecordBinding()),
        GetPage(name: '/EditVisitDoctor',      page: () =>EditVisit(),            binding:EditVisitBinding()),
        GetPage(name: '/FancyNavBarDoctor',    page: () =>FancyNavBarPageDoctor(),),
        GetPage(name: '/doctor_patient_servies',    page: () =>Doctor_patient_servies(),),

/////////////////////////////////////////////////////////////////////////////////////
        GetPage(name: '/List',            page: () =>List(),),
        GetPage(name: '/FancyNavBarx_ray',    page: () =>FancyNavBarx_ray(),binding: homex_rayBinding()),
        GetPage(name: '/Addvisitx_ray',             page: () =>Addvisitx_ray (),binding: AddvisitaX_raybinding () ),
        GetPage(name: '/PersonalInformationx_ray',             page: () =>PersonalInformationx_ray (),),
        GetPage(name: '/VisitsListX_Ray',             page: () =>VisitsListX_Ray (),binding: VisitListX_raybinding() ),
        GetPage(name: '/EditVisitx_ray',             page: () =>EditVisitx_ray (),binding: Editvisitingx_raybinding() ),
        GetPage(name: '/addConsumer',          page: () =>AddConsumer(),        binding:warehouseBindinds()),
        GetPage(name: '/warehouseProducts',    page: () =>WarehouseProducts(),  binding:warehouseBindinds()),
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

        GetPage(name: '/financial_home',       page: () =>financial_home(), ),
        GetPage(name: '/inancial_sections',    page: () =>financial_sections(), ),
        GetPage(name: '/financial_Clinic',     page: () =>financial_Clinic(), ),
        GetPage(name: '/financial_Clinic_incoming_material',    page: () =>financial_Clinic_incoming_material(), ),
        GetPage(name: '/Payments_and_Receipts',    page: () =>Payments_and_Receipts(), ),
        GetPage(name: '/maintenance',    page: () =>maintenance(), ),
        GetPage(name: '/waiting_from_reception',    page: () =>waiting_from_reception(), ),
        GetPage(name: '/InvoicePage',    page: () =>InvoicePage(), ),
        GetPage(name: '/navigationBar_financial',    page: () =>navigationBar_financial(), ),
        GetPage(name: '/Financial_invoices_archive',    page: () =>Financial_invoices_archive(), ),
        GetPage(name: '/financial_material',    page: () =>financial_material(), ),














      ],
    );
  }
}
