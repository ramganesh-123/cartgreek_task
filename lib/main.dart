import 'package:cart_greek_task/approuter.dart';
import 'package:cart_greek_task/colours.dart';
import 'package:cart_greek_task/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appName,
      theme: ThemeData(
        fontFamily: 'AlegreyaSans',
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.primary,
        colorScheme: AppColors.appColorScheme,
      ),
      initialRoute: "/",
      navigatorObservers: [routeObserver],
      getPages: AppRouter.routers,
    ),
  );
}
