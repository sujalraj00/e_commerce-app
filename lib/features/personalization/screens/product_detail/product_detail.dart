import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/product_attributes.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/product_image_slider.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/product_metadata.dart';
import 'package:e_commerce/features/personalization/screens/product_detail/widgets/rating_and_share_widget.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ----Product Image Slider
            TProductImageSlider(dark: dark),

            // -----Product Detail
             Padding(
                padding: const EdgeInsets.only(right: TSizes.defaultSpace,  left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    // Rating and Share-----
                    const TRatingAndShare(),

                    // Price Title Stock and Brand -------
                    const TProductMetaData(),

                    // Attributes -------
                    const TProductAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections,),

                    // CheckOut Button ----------
                    SizedBox(width: double.infinity ,child: ElevatedButton(onPressed: (){}, child:Text('Checkout'))),

                    // Description ---------
                    const TSectionHeading(title: 'Description', showActionButton: false,),
                    const SizedBox(height: TSizes.spaceBtwItems,),
                    const ReadMoreText(
                      'This is the product description for blue Nike sleevless vest . Theree are more thing that can be added but i am not interested',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: ' Less',
                      trimCollapsedText: ' Show more',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),

                    // Reviews -------
                    Divider(),
                    SizedBox(height: TSizes.spaceBtwItems,),
                    Row(
                      children: [
                        const TSectionHeading(title: 'Reviews(199)', showActionButton: false, ),
                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18,) ,),

                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections,)
                  ],
                ),
            )

          ],
        ),
      ),
    );
  }
}




