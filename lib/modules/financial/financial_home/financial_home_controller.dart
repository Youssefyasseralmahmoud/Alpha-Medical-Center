import 'package:get/get.dart';
class financial_home_controller extends GetxController{


  var notificationCount = 0.obs;

  void incrementNotificationCount() {
    notificationCount.value++;
  }

}