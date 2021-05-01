import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movpass/translations/translations.dart';
import 'package:movpass/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      translations: Texts(),
      fallbackLocale: Locale('pt', 'BR'),
      title: 'Movpass',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
