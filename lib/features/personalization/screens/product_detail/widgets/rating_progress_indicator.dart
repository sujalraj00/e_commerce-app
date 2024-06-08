import 'package:e_commerce/features/personalization/screens/product_detail/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: Text('4.8',style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRatingProgressIndicator(text: '5', values: 1.0,),
              TRatingProgressIndicator(text: '5', values: 0.8,),
              TRatingProgressIndicator(text: '4', values: 0.6,),
              TRatingProgressIndicator(text: '3', values: 0.4,),
              TRatingProgressIndicator(text: '2', values: 0.2,),


            ],
          ),
        )
      ],
    );
  }
}