import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:study_practice_app/core/binding/binding.dart';
import 'app.dart';
import 'core/helper/shared_prefarenses_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  await SharedPreferencesHelper().init();
  AppBinding().dependencies();

  runApp(const MyApp());
}
