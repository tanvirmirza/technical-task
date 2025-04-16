import 'package:get/get.dart';
import 'package:study_practice_app/core/helper/shared_prefarenses_helper.dart';
import 'package:study_practice_app/feature/profile/model/user_model.dart';

class UserConroller extends GetxController {
  SharedPreferencesHelper preferencesHelper = SharedPreferencesHelper();
  var userList = <UserModel>[].obs;
  var isLoading = false.obs;

  @override
  Future<void> onInit() async{
    super.onInit();
    await preferencesHelper.init();
    getUser();
  }

  void getUser() async {
    var token = preferencesHelper.getString("userToken");
    if (token != null) {
      userList.value = userModelFromJson(token); // Deserialize JSON
      print("Loaded from local");
    } else {
      isLoading(true);
      try {
        // String url = AppUrls.abuser;
        // var response = await NetworkCaller().getRequest(
        //   url, 
        // );
        // userList.value = userData;
        // storage.write('apiData', userModelToJson(userData)); // Serialize JSON
        print("Fetched from API & saved locally");
      } catch (e) {
        print('Error: $e');
      } finally {
        isLoading(false);
      }
    }
  }

  // void getdUser() async {
  //   var savedData = storage.read('apiData');
  //   if (savedData != null) {
  //     userList.value = savedData;
  //     print("Loaded from local");
  //   } else {
  //     isLoading(true);
  //     try {
  //       var userData = await ApiService().fetchData();
  //       // userList.addAll(userData);
  //       userList.value = userData;
  //       storage.write('apiData', userData); // Save locally
  //       print("Fetched from API & saved locally");
  //     } catch (e) {
  //       print('Error: $e');
  //     } finally {
  //       isLoading(false);
  //     }
  //   }
  // }
}
