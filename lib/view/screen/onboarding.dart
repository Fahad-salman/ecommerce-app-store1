import 'package:flutter/material.dart';
// import 'package:flutter_application_2/core/constant/color.dart';
// import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/widget/onboarding/custombutton.dart';
import 'package:flutter_application_2/view/widget/onboarding/customslider.dart';
import 'package:flutter_application_2/view/widget/onboarding/dotcontroller.dart';
import 'package:get/get.dart';
// import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
   OnBoarding({Key? key}) : super(key: key);
//  static RxInt currentStep = RxInt(0);
//  static late PageController pageController = PageController(initialPage: 0,);
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const Expanded(
            flex: 4,
            child: CustomSliderOnboarding(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: const [
                  CustomDotOnBording(),
                  Spacer(
                    flex: 2,
                  ),
                  CustomButtonOnBording(),
                ],
              ))
        ]),
      ),
    );
  }
}
