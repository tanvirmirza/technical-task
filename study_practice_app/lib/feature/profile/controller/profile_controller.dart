import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxString selectedTopic = ''.obs;

  RxString name = 'Khaled Mohammed'.obs;

  RxString email = 'khaledmohammed@gmail.com'.obs;

  void selectTopic(String? topic) {
    if (topic != null) {
      selectedTopic.value = topic;
    }
  }

  void setDetails(String newName, String newEmail) {
    name.value = newName;
    email.value = newEmail;
  }
}
