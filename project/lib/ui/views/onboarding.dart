import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:project/model/intro.dart';
import 'package:project/ui/route/route.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: IntroScreenOnboarding(
        backgroudColor: Colors.transparent,
        introductionList: introData
            .map((e) => Introduction(
                imageHeight: 240.h,
                titleTextStyle:
                    TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                subTitleTextStyle: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w300,
                ),
                imageUrl: e.image,
                title: e.title,
                subTitle: e.description))
            .toList(),
        onTapSkipButton: () {
          Get.toNamed(login);
        },
      )),
    );
  }
}
