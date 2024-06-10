import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:e_commerce/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commerce/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/device/device_utility.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    // Appbar --
                    THomeAppBar(),
                    SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    // SearchBar --
                    TSearchContainer(text: 'Search in Store'),
                    SizedBox(height: TSizes.spaceBtwSections),

                    // Categories --
                    Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                          // -- Heading
                          TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white,
                          ),
                          SizedBox(height: TSizes.spaceBtwItems),

                          // -- Categories
                          THomeCategories()
                        ],
                      ),
                    ),
                    SizedBox(height: TSizes.spaceBtwSections,)

                  ],
                )),

            // body----
            Padding(
              padding:const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // promo slider ---------
                  const TPromoSlider(banners: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3,
                  ],),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // heading
                  TSectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: TSizes.spaceBtwItems),


                  // popular product --
                  TGridLayout(itemCount: 4, itemBuilder: (_, index ) => const TProductCardVertical(),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}