import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index){
    carousalCurrentIndex.value = index;
}
}