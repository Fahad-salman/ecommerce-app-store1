import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/onboarding_controller.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:flutter_application_2/view/screen/onboarding.dart';
import 'package:get/get.dart';

class CustomButtonOnBording extends GetView<OnBoardingControllerrImp> {
  const CustomButtonOnBording({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin: EdgeInsets.only(bottom: 25),
                    width: Get.width*0.60,
                    child: 
                    
                    MaterialButton(
                      
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      color: AppColor.PrimaryColor,
                      height: 40,
                      padding: EdgeInsets.symmetric(vertical: 4 , horizontal: 20),
                      minWidth: Get.width*0.60,
                      // minWidth: 550,
                      
                      onPressed: () {
                        controller.next();
                        // if(OnBoarding.currentStep.value < onBoardingList.length - 1){
                        // OnBoarding.currentStep.value++;
                        // OnBoarding.pageController.animateToPage( OnBoarding.currentStep.value, duration: const Duration(milliseconds: 900), curve: Curves.linear);
                        // }
                        
                      },
                      child:  GetBuilder<OnBoardingControllerrImp>(
                        builder: (controller) => Text(
                        onBoardingList[controller.currentPage].button!,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      )
                    ),
                  );
  }
}

// Text(
//                        controller.currentPage[onBoardingList] ,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),