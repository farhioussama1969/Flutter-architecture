import 'package:flutter/material.dart';
import 'package:flutter_architecture/translations/translation.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "your application name here",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      translations: Translation(),
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
    ),
  );
}
