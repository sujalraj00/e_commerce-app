import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/TProductPriceTitle.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark  = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        // selected attributes pricing and description
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child:  Column(
            children: [
              // title , price and stock
              Row(
                children: [
                  const TSectionHeading(title: 'Variation',showActionButton: false,),
                  const SizedBox(width: TSizes.spaceBtwItems,),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           const TProductTitleText(title: 'Price :', smallSize: true,),
                           // Actual price -----------
                           Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                           const SizedBox(width: TSizes.spaceBtwItems,),
                           // Sale Price----------
                           const TProductPriceText(price: '20')
                         ],
                       ),

                       // --------Stock
                       Row(
                         children: [
                           TProductTitleText(title: 'Stock :' , smallSize: true,),
                           Text('In Stock', style: Theme.of(context).textTheme.titleMedium,)
                         ],
                       )
                     ],
                   ),
                ],
              ),
              // ----Variation Description
              const TProductTitleText(title: 'This is the description of the product and it can go upto 4 lines.',
                smallSize: true,
              maxLines: 4,)
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        // ----------Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected:true , onSelected: (value){},),
                TChoiceChip(text: 'Blue', selected:false , onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected:false, onSelected: (value){}),

              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Size', showActionButton: false,),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Eu 34', selected:true , onSelected: (value){}),
                TChoiceChip(text: 'Eu 36', selected:false , onSelected: (value){}),
                TChoiceChip(text: 'Eu 38', selected:false, onSelected: (value){}),

              ],
            )
          ],
        )
      ],
    );
  }
}


