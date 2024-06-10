import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

class TOrderList extends StatelessWidget {
  const TOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 7,
      separatorBuilder: (_,__) => const SizedBox(height: TSizes.spaceBtwItems,),
        itemBuilder: (_,index) => TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        showBorder: true,
        backgroundColor:  dark ? TColors.dark :  TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1 ----------
            Row(
              children: [
                // 1 -- Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: TSizes.spaceBtwItems /2,),

                // 2-- Status And Date
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: TColors.primary, fontWeightDelta: 1),),
                    Text('09 JUN 2024', style: Theme.of(context).textTheme.headlineSmall ,)
                  ],
                ),
                 // 3---- Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: TSizes.iconSm,))
              ],
            ),

            const SizedBox(height: TSizes.spaceBtwItems,),
            // Row 2----
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // 1 -- Icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: TSizes.spaceBtwItems /2,),

                      // 2-- Status And Date
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Order', style: Theme.of(context).textTheme.labelMedium),
                          Text('[#256f2]', style: Theme.of(context).textTheme.titleMedium ,)
                        ],
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      // 1 -- Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: TSizes.spaceBtwItems /2,),

                      // 2-- Status And Date
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium,),
                          Text('09 JUN 2024', style: Theme.of(context).textTheme.titleMedium ,)
                        ],
                      ),

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
