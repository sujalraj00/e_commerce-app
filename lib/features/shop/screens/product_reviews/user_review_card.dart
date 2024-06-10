import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
class TUserReviewCard extends StatelessWidget {
  const TUserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1),),
                const SizedBox(width: TSizes.spaceBtwItems,),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge,),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        Row(
          children: [
            const TRatingBarIndicator(rating: 3,),
            const SizedBox(width: TSizes.spaceBtwItems,),
            Text('08 Jun 2024', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems,),
        const ReadMoreText(
          'the userinterface of the app is very much impressive, my goal is to complete this app within this week till next friday consider this as deadline',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText:'showmore' ,
          trimExpandedText:'showless' ,
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const SizedBox(height: TSizes.spaceBtwItems,),

        // Company Review----------
        TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          padding: const EdgeInsets.all(TSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('T Store ', style: Theme.of(context).textTheme.titleMedium,),
                  Text('08 Jun 2024', style: Theme.of(context).textTheme.bodyMedium,),
                ],
              ),
              const SizedBox(width: TSizes.spaceBtwItems,),
              const ReadMoreText(
                'the userinterface of the app is very much impressive, my goal is to complete this app within this week till next friday consider this as deadline',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText:'show more' ,
                trimExpandedText:'show less' ,
                moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
              ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        
      ],
    );
  }
}
