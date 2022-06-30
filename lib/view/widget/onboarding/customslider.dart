import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/onboarding_controller.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/core/funcations/utils.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSliderOnboarding extends GetView<OnBoardingControllerrImp> {
  const CustomSliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        // controller: OnBoarding.pageController,
        // OnBoarding.currentStep.value = index;
        itemCount: onBoardingList.length,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemBuilder: ((context, i) => Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  onBoardingList[i].title!,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  onBoardingList[i].image!,
                  width: Get.width * 0.8,
                  height: Get.height * 0.45,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: fahadstyle(
                          // height: 2,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 1.4,
                        ),
                      )),
                ),
              ],
            )));
  }
}
