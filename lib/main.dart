import 'package:ai/const.dart';
import 'package:ai/screens/home.dart';
import 'package:ai/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ai',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: DefColor.bgColor),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}
