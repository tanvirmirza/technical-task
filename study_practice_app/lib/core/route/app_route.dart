import 'package:get/get.dart';
import 'package:study_practice_app/feature/bottom_nav/main_navbar.dart';
import 'package:study_practice_app/feature/home_notification_flow/screen/notification_screen.dart';
import 'package:study_practice_app/feature/home_notification_flow/screen/search_screen.dart';
import 'package:study_practice_app/feature/profile/screen/about_screen.dart';
import 'package:study_practice_app/feature/study_practice_flow/screen/alertness_artical.dart';
import 'package:study_practice_app/feature/study_practice_flow/screen/practice_screen.dart';
import 'package:study_practice_app/feature/study_practice_flow/screen/study_practice_screen.dart';
import 'package:study_practice_app/feature/study_practice_flow/screen/study_screen.dart';

class AppRoute {
  static const String main = '/Main';
  static const String studyPractice = '/studyPractice';
  static const String practice = '/Practice';
  static const String study = '/Study';
  static const String article = '/Article';
  static const String notification = '/Notification';
  static const String search = '/Search';
  static const String about = '/About';

  static final route = [
    GetPage(
        name: main,
        page: () => const MainNavBar(),
        transition: Transition.rightToLeft),
    GetPage(
        name: studyPractice,
        page: () => const StudyPracticeScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: practice,
        page: () => const PracticeScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: study,
        page: () => const StudyScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: article,
        page: () => const ArticleScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: notification,
        page: () => const NotificationScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: search,
        page: () => const SearchScreen(),
        transition: Transition.rightToLeft),
    GetPage(
        name: about,
        page: () => AboutScreen(),
        transition: Transition.rightToLeft),
  ];
}
