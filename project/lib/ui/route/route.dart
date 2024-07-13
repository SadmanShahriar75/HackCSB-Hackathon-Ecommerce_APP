

import 'package:get/get.dart';
import 'package:project/ui/views/auth/login.dart';
import 'package:project/ui/views/onboarding.dart';
import 'package:project/ui/views/splash_screen.dart';
import 'package:project/ui/views/unknown.dart';

const String splash = '/splash-screen';
const String unknown = '/unknown';
const String onboarding = '/onboarding';
const String login= '/login';

List<GetPage> getPages = [
  GetPage(
    name: unknown,
    page: () => const Unknown(),
  ),
  
  GetPage(
    name: splash,
    page: () => const Splash(),
  ),

   GetPage(
    name: onboarding,
    page: () => const Onboarding(),
  ),

    GetPage(
    name: login,
    page: () => const LoginScreen(),
  ),





];