import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import'package:get/get.dart';

class CustomSliderOnboarding extends StatelessWidget {
  const CustomSliderOnboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: OnBoarding.pageController,
                itemCount: onBoardingList.length,
                onPageChanged: (index){
                  OnBoarding.currentStep.value = index;
                },
                itemBuilder: ((context, i) => Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          onBoardingList[i].title!,
                          style: const TextStyle(
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
                        Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Text(
                              onBoardingList[i].body!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                height: 2,
                                color: AppColor.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            )),
                      ],
                    )));
  }
}