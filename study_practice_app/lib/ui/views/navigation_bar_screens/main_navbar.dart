import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/views/navigation_bar_screens/home_screen.dart';
import 'package:study_practice_app/ui/views/notification_screen.dart';
import 'package:study_practice_app/ui/views/navigation_bar_screens/profile_screen.dart';
import 'package:study_practice_app/ui/views/search_screen.dart';
import 'package:study_practice_app/ui/views/navigation_bar_screens/subscription_screen.dart';

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
                backgroundColor:
                    Theme.of(context).colorScheme.primary.withOpacity(0.2),
                child: Icon(
                  Icons.person,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hi, Khaled Mohammed!',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Jeddah, SA, 10016, Saudi',
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade600),
                ),
              ],
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
                  color: colorGrey.withOpacity(0.1),
                  width: 1,
                ),
                shape: BoxShape.circle,
                color: colorWhite,
                boxShadow: [
                  BoxShadow(
                    color: colorGrey.withOpacity(0.3),
                  ),
                ],
              ),
              child: Icon(Icons.search,
                  color: Theme.of(context).colorScheme.primary),
            ),
            highlightColor: colorWhite,
            hoverColor: colorWhite,
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const SearchScreen())),
          ),
          IconButton(
            icon: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorGrey.withOpacity(0.1),
                  width: 1,
                ),
                shape: BoxShape.circle,
                color: colorWhite,
                boxShadow: [
                  BoxShadow(
                    color: colorGrey.withOpacity(0.3),
                  ),
                ],
              ),
              child: Icon(
                Icons.notifications_none_rounded,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            highlightColor: colorWhite,
            hoverColor: colorWhite,
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => const NotificationScreen())),
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
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.window,
              ),
              label: 'Subscription'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Profile'),
        ],
      ),
    );
  }
}
