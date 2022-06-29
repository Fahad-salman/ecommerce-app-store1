import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import 'package:get/get.dart';

class CustomDotOnBording extends GetView {
  const CustomDotOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(
                                // 1000,
                                onBoardingList.length,
                                (index) => AnimatedContainer(
                                      margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                      duration: const Duration(milliseconds: 900),
                                      // width:OnBoarding.currentStep.value == index? 30 : 6,
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        color: AppColor.PrimaryColor,
                                        // color:OnBoarding.currentStep.value == index? AppColor.PrimaryColor : AppColor.PrimaryColor.withOpacity(.6),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    )),
                          ],
                        ),
        );
    
  }
}