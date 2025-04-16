import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_practice_app/feature/profile/controller/user_conroller.dart';
import 'package:study_practice_app/feature/profile/widgets/custom_tb_appbar.dart';
import 'package:study_practice_app/feature/profile/widgets/profile_tile.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});

  final UserConroller userConroller = Get.put(UserConroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'About'),

      body: Obx(() {
        if (userConroller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return RefreshIndicator(
          onRefresh: ()async{},
          child: ListView.builder(
            itemCount: userConroller.userList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ProfileTile(
                  title: userConroller.userList[index].name,
                  subtitle: userConroller.userList[index].email,
                  icon: Icons.person,
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
