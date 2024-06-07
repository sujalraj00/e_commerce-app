import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/t_circular_icon.dart';
import '../../../../../common/widgets/images/t_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // ------Main larger IMAGE
            const SizedBox(height: 400, child: Padding(
              padding: EdgeInsets.all(TSizes.productImageRadius * 2),
              child: Center(child: Image(image: AssetImage(
                  TImages.productImage5))),
            )),

            // Image Slider
            Positioned(
              right: 0,
              left: TSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.spaceBtwItems,),
                  itemCount: 8,
                  itemBuilder: (_,index) => TRoundedImage(
                    width: 80,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    imageUrl: TImages.productImage3,
                    padding: const EdgeInsets.all(TSizes.sm),
                  ),
                ),
              ),
            ),

            // AppBar Icons
            const TAppbar(
              showBackArrow: true,
              actions: [TCircularIcon(icon:  Iconsax.heart5, color: Colors.red,)],
            ),
          ],
        ),
      ),
    );
  }
}