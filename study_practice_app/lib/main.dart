import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_practice_app/provider/provider.dart';
import 'app.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StudyPracticeProvider()),
      ],
      child: const MyApp(),
    ),);
}



