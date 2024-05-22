import 'package:e_commerce/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TSignUpForm extends StatelessWidget {
  const TSignUpForm({
    super.key
  });



  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields,),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields,),
        // username
        TextFormField(
          expands: false,
          decoration:const  InputDecoration(labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        /// email
        TextFormField(
          expands: false,
          decoration:const  InputDecoration(labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields,),
        // phone number
        TextFormField(
          expands: false,
          decoration:const  InputDecoration(labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields,),

        // password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(width: TSizes.spaceBtwInputFields,),

        // term and condition
        const TTermsAndConditionCheckBox(),
        const SizedBox(height: TSizes.spaceBtwSections,),
        // sign up button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child:const  Text(TTexts.createAccount),),)
      ],
    ));
  }
}

