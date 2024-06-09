import 'package:flutter/material.dart';

import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../common/widgets/texts/TProductPriceTitle.dart';
import '../../../../../utils/constants/sizes.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({
    super.key,  this.showAddRemoveButton = true,
  });
final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        itemCount: 3,
        itemBuilder: (_, index) =>  Column(
          children: [
            const TCartItem(),
            if(showAddRemoveButton)   const SizedBox(height: TSizes.spaceBtwItems, ),

            // Add remove button with total price
            if(showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Extra Space
                    SizedBox(width: 70,),
                    // Add Remove Button
                    TProductQuantityWithAddRemove(),
                  ],
                ),
                TProductPriceText(price: '256')
              ],
            )
          ],
        ));
  }
}
