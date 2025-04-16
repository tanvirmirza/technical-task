import 'package:get/get.dart';
import 'package:study_practice_app/feature/profile/controller/profile_controller.dart';
import 'package:study_practice_app/feature/profile/controller/user_conroller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(), fenix: true);
    Get.lazyPut(() => UserConroller(), fenix: true);
    
  }
}
