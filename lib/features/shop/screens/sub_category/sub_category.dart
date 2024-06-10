import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce/common/widgets/products/product_card/product_card_horizontal.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const TAppbar(
        title: Text('Shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banners ]
              const TRoundedImage(imageUrl: TImages.banner3, applyImageRadius: true, width: double.infinity,  ),
              const SizedBox(height: TSizes.spaceBtwSections,),
              Column(
                children: [
                  TSectionHeading(title: 'Sports Shirts'  , onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwItems /2 ,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(width: TSizes.spaceBtwItems,),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>  const TProductCardHorizontal(),
                        ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
