import 'package:flutter/cupertino.dart';
import 'package:swypepay/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';
import 'package:swypepay/services/navigation_service.dart';

class OnBoardingController extends GetxController{
  var seletedPageIndex = 0.obs;
  var pageController = PageController();
  bool get isLastScreen => seletedPageIndex.value == onBoardingpages.length - 1;


  nextPage(){
    if(isLastScreen){
      //go to auth
    NavigationService.instance.navigateTo("login");


    }
    else
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onBoardingpages = [
    OnboardingInfo('assets/image.png', "De Finibus Bonorum et Malorum",
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo"),
    OnboardingInfo('assets/image1.png', "De Finibus Bonorum et Malorum",
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo"),
    OnboardingInfo('assets/splash.png', "De Finibus Bonorum et Malorum",
        "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo"),
  ];
}
