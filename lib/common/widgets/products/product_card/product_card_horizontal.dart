import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/TProductPriceTitle.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/t_brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/helper_functions.dart';

class TProductCardHorizontal extends StatelessWidget {
  TProductCardHorizontal ({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.lightContainer,
        ),
      child: Row(
        children: [
          // Thumbnail
          TRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.white,
            child:  Stack(
              children: [
                // Thumbnail Image-----
               const SizedBox(
                height: 120,
                   width: 120 , child: TRoundedImage(imageUrl: TImages.productImage1, applyImageRadius: true,)),

                // Sale Tag
                Positioned(top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black),),
                    )),

                // ---- Favourite Icon Button
                const Positioned(top: 0,
                    right: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5, color:  Colors.red,
                    )),

              ],
            ),
          ),

          // Details
           SizedBox(
            width: 172,
            child: Padding(padding: const EdgeInsets.only(top:  TSizes.sm, left: TSizes.sm),
                child: Column(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(title: 'Green Nike Half Sleeve Shirt',smallSize: true,),
                        SizedBox(height: TSizes.spaceBtwItems /2,),
                        TBrandTitleWithVerifiedIcon(title: 'Nike')
                      ],
                ),

                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Pricing 
                    const Flexible(child: TProductPriceText(price: '256.0')),

                    // Add to Cart
                    Container(
                      decoration: const BoxDecoration(
                        color: TColors.dark,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(TSizes.cardRadiusMd),
                          bottomRight: Radius.circular(TSizes.productImageRadius)
                        ),
                      ),
                      child: const SizedBox(
                        width: TSizes.iconLg *1.2,
                        height: TSizes.iconLg *1.2,
                        child: Center(
                          child: Icon(Iconsax.add, color: TColors.white,),
                        ),
                      ),
                    )
                    ]
    )
    ]
    )
    )
          )
    ]
      )
    );
  }
}
