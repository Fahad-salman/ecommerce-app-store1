import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingControllerr extends GetxController{
    next();
    onPageChanged(int index);
}

class OnBoardingControllerrImp extends OnBoardingControllerr{

  late PageController pageController;
  int currentPage = 0;

  @override
  next() {
    currentPage ++;
    pageController.animateToPage(currentPage, duration: const Duration(microseconds: 900), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
    
  }


  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

}