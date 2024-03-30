import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/res/getx_localization/languages.dart';
import 'package:flutter_clean_architecture/res/routes/routes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Clean Architecture',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: Languages(),
      locale: const Locale("en", "US"),
      fallbackLocale: const Locale("en", "US"),
      initialRoute: '/home',
      getPages: AppRoutes.appRoutes(),
    );
  }
}


