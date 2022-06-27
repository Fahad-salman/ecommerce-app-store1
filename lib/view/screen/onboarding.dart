import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:flutter_application_2/data/datasource/static/static.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
            itemCount: onBoardingList.length,
            itemBuilder: ((context, i) => Column(
                  children: [
                    SizedBox(height: 20,),
                    Text(
                      onBoardingList[i].title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Image.asset(onBoardingList[i].image!,
                    width: Get.width*0.8, 
                    height: Get.height*0.45,
                    fit: BoxFit.cover, 
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          onBoardingList[i].body!,
                          textAlign: TextAlign.center,
                          style:const TextStyle(height: 2,
                          color: AppColor.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          ),
                        )),
                  ],
                ))),
      ),
    );
  }
}
