import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iris_delivery_app_ab/app_theme.dart';
import 'package:iris_delivery_app_ab/src/pages/login/login_page.dart';
import 'package:iris_delivery_app_ab/src/pages/register/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iris Delivery',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/register', page: () => RegisterPage()),
      ],
      theme: AppTheme.theme, // Azul Iris
      navigatorKey: Get.key,
    );
  }
}



