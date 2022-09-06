import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:work/model/info_model.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo('assets/image1.jpeg', 'Accept a job',
        'Now you can order food any time  right from your mobile.'),
    OnboardingInfo('assets/image.jpeg', 'Tracking Real time',
        'We are maintain safty and We keep clean while making food.'),
    OnboardingInfo('assets/image3.jpeg', 'Get On- Time Service',
        'Orders your favorite meals will be immediately deliver')
  ];
}