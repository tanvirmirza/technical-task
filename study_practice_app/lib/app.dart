import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'ui/views/navigation_bar_screens/main_navbar.dart';
import 'ui/views/study_practice_screens/alertness_artical.dart';
import 'ui/views/study_practice_screens/practice_screen.dart';
import 'ui/views/study_practice_screens/study_practice_screen.dart';
import 'ui/views/study_practice_screens/study_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Practice App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: Colors.blueAccent,
          useMaterial3: true,
         
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            labelLarge: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: colorWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ))),
          routes: {
            '/studyPractice' : (context) => const StudyPracticeScreen(),
            '/practice' : (context) => const PracticeScreen(),
            '/study' : (context) => const StudyScreen(),
            '/article' : (context) => const ArticleScreen(),

            

          },
      home: const MainNavBar(),
    );
  }
}
