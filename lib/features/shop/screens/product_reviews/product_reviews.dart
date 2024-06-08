
import 'package:e_commerce/features/shop/screens/product_reviews/user_review_card.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products/rating/rating_indicator.dart';
import '../../../personalization/screens/product_detail/widgets/rating_progress_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      // Reviews and Ratings
      appBar: const TAppbar(title: Text('Reviews & Ratings'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ratings and reviews are verified form the people from the same type of device that you use.'),
             const SizedBox(height: TSizes.spaceBtwItems,),
            
            // Overall product rating
            const TOverallProductRating(),
            const TRatingBarIndicator(rating: 3.5,),
            Text('12311', style: Theme.of(context).textTheme.bodySmall,),
            const SizedBox(height: TSizes.spaceBtwSections,),
            const TUserReviewCard(),
            const TUserReviewCard(),
            const TUserReviewCard(),
            const TUserReviewCard(),
          ],
        ),),
      ),
    );
  }
}





