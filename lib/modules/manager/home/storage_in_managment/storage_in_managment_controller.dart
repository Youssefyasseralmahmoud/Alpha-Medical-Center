import 'package:get/get.dart';
class Storage_in_manamgment_controller extends GetxController {
  bool droped = false;

  ontapdropdown(bool droped) {
    this.droped = !droped;
    update();
  }
  bool droped_two = false;

  ontapdropdown_two(bool droped_two) {
    this.droped_two = !droped_two;
    update();
  }
}