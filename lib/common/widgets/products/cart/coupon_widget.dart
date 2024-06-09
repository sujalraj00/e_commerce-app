import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';

class TCouponCode extends StatelessWidget {
  const TCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TRoundedContainer(
        showBorder: true,
        backgroundColor: dark ? TColors.dark : TColors.white,
        padding: const EdgeInsets.only(left: TSizes.md, right: TSizes.sm, top: TSizes.sm, bottom: TSizes.sm),
        child:  Row(
          children: [
            const  Flexible(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Have a promo code? Enter here',
                    border: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none
                ),
              ),
            ),

            // --- Buttons
            SizedBox(width: 80, child: ElevatedButton(onPressed: (){}, child: Text('Apply'),
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? TColors.white.withOpacity(0.5) : TColors.dark.withOpacity(0.5),
                  backgroundColor: TColors.grey.withOpacity(0.2),
                  side: BorderSide(color: TColors.grey.withOpacity(0.1))
              ),),
            )
          ],
        )
    );
  }
}