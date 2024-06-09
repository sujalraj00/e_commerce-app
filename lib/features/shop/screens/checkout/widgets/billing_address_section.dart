import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'change', onPressed: (){},),
        Text('Coding With Me', style: Theme.of(context).textTheme.bodyLarge,),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.phone, color: TColors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('+1 24234 243-2342', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems/2,),
        Row(
          children: [
            Icon(Icons.location_history, color: TColors.grey, size: 16,),
            SizedBox(width: TSizes.spaceBtwItems),
            Text('South Liana Merryland , USA ', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)
          ],
        ),
      ],
    );
  }
}
