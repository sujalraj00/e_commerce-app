import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/product_detail.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  TProductCardHorizontal ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
          ),
        child: Column(
          children: [
            // Thumbnail
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child:  Stack(
                children: [
                  // Thumbnail Image-----
                 const TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,),

                  // Sale Tag
                  Positioned(top: 12,
                      child: TRoundedContainer(
                        radius: TSizes.sm,
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                        child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                      )),

                  // ---- Favourite Icon Button

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
