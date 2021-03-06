import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/pages/home_page.dart';

void main() {
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale("en", "US"),
        Locale('ko','KO'),
        Locale("ja", "JA")
      ],
      fallbackLocale: Locale("en", "US"),
      path: ("assets/translations"),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home_page(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
