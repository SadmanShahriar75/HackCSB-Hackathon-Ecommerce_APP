import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:project/const/app_string.dart';
import 'package:project/ui/route/route.dart';
import 'package:project/ui/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: GetMaterialApp(
        
          title: AppString.appName,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.leftToRight,
          theme: AppTheme().lightTheme(context),
          darkTheme: AppTheme().darkTheme(context),
          themeMode: ThemeMode.light,
          getPages: getPages,
          initialRoute: splash,
          unknownRoute: getPages.first,
        
      ),
    );
  }
}

