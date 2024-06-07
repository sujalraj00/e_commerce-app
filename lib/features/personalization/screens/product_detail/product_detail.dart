import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/product_image_slider.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/product_metadata.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/rating_and_share_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ----Product Image Slider
            TProductImageSlider(dark: dark),

            // -----Product Detail
            const Padding(
                padding: EdgeInsets.only(right: TSizes.defaultSpace,  left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    // Rating and Share-----
                    TRatingAndShare(),

                    // Price Title Stock and Brand -------
                    TProductMetaData()

                  ],
                ),
            )

          ],
        ),
      ),
    );
  }
}




