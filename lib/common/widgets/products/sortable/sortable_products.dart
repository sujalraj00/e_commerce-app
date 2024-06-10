import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_card/product_card_vertical.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown----------
        DropdownButtonFormField(
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          items: ['Name', 'Higher Price', 'Lower Price','Sale', 'Newest','Popularity'].map((option) => DropdownMenuItem(value: option, child: Text(option),)).toList(),
        ),
        const SizedBox(height: TSizes.spaceBtwSections,),
        TGridLayout(itemCount: 10, itemBuilder: (_,index) => const TProductCardVertical())
      ],
    );
  }
}