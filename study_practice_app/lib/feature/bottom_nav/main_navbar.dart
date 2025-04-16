import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_practice_app/core/route/app_route.dart';
import 'package:study_practice_app/core/utility/app_colors.dart';
import 'package:study_practice_app/feature/home_notification_flow/screen/home_screen.dart';
import 'package:study_practice_app/feature/profile/controller/profile_controller.dart';
import 'package:study_practice_app/feature/profile/screen/profile_screen.dart';
import 'package:study_practice_app/feature/subscription/screen/subscription_screen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SubscriptionScreen(),
    const ProfileViewScreen(),
  ];

  final ProfileController getStudyPractice = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.primary.withOpacity(0.2),
                child: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, ${getStudyPractice.name.value}!',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Jeddah, SA, 10016, Saudi',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.colorGrey.withOpacity(0.1),
                  width: 1,
                ),
                shape: BoxShape.circle,
                color: AppColors.colorWhite,
                boxShadow: [
                  BoxShadow(color: AppColors.colorGrey.withOpacity(0.3)),
                ],
              ),
              child: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            highlightColor: AppColors.colorWhite,
            hoverColor: AppColors.colorWhite,
            onPressed:
                () => Get.toNamed(
                  AppRoute.search,
                ), // Replace 'HomeScreen' with the desired widget or route
          ),
          IconButton(
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.colorGrey.withOpacity(0.1),
                  width: 1,
                ),
                shape: BoxShape.circle,
                color: AppColors.colorWhite,
                boxShadow: [
                  BoxShadow(color: AppColors.colorGrey.withOpacity(0.3)),
                ],
              ),
              child: Icon(
                Icons.notifications_none_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            highlightColor: AppColors.colorWhite,
            hoverColor: AppColors.colorWhite,
            onPressed: () => Get.toNamed(AppRoute.notification),
          ),
        ],
      ),
      body: Center(child: _screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 12,
        elevation: 0,
        onTap: (value) {
          _selectedIndex = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
