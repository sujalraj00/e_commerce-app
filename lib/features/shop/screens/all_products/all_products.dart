import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppbar(
        title: Text('Popular Products'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              DropdownButtonFormField(
                onChanged: (value) {},
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                items: ['Name', 'Higher Price', 'Lower Price','Sale', 'Newest','Popularity'].map((option) => DropdownMenuItem(value: option, child: Text(option),)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
