import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import 'package:get/get.dart';

class CustomDotOnBording extends GetView {
  const CustomDotOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
       () {
        return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                              onBoardingList.length,
                              (index) => AnimatedContainer(
                                    margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                    duration: const Duration(milliseconds: 900),
                                    width:OnBoarding.currentStep.value == index? 30 : 6,
                                    height: 6,
                                    decoration: BoxDecoration(
                                      color:OnBoarding.currentStep.value == index? AppColor.PrimaryColor : AppColor.PrimaryColor.withOpacity(.6),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                        ],
                      );
      }
    );
  }
}