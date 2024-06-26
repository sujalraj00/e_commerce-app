
import 'package:e_commerce/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {

  static void openLoadingDialog(String text, String animation){
    showDialog(context: Get.overlayContext!,  // we use overlay context for overlay dialogs
        barrierDismissible: false, // this dialog can't be dismissed by tapping outside it
        builder: (_) => PopScope(
          canPop: false,         // disable popping with back button
          child: Container(
            color:  THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 250,),
                TAnimationLoaderWidget(text: text, animation: animation),
              ],
            ),
          ),
        )
    );
  }

  //stop the currently open loading dialog
  // this method doesn't run anything
 static stopLoading() {
    Navigator.of(Get.overlayContext!).pop(); // close the dialog using navigator
 }
}