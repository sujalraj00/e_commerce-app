import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  // variables

  // update current index with page scroll
  void updatePageIndicator(index){}

  //jump to the specific dot selected page
  void dotNavigationClick(index) {}

  // update current index and jump to next page
  void nextPage() {}

  // update current index and jump to last page
  void skipPage() {}
}