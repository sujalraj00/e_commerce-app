import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce/common/widgets/icons/t_circular_icon.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/list_tile/settings_menu_tile.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tile/user_profile_tile.dart';
import '../../../../utils/constants/image_strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // -------header
            TPrimaryHeaderContainer(
                child: Column(
                  children: [
                    // Appbar
                    TAppbar(
                      title: Text(
                        'Account',
                        style: Theme.of(context).textTheme.headlineMedium!.apply(color: TColors.white),
                      ),
                    ),

                    // User Profile Card
                     TUserProfileTile(onPressed: () => Get.to(() => ProfileScreen())),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),
                  ],
                )),

            // -----------body
             Padding(padding: const  EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting--
                   const TSectionHeading(title: 'Account Settings', showActionButton: false,),
                   const SizedBox(height: TSizes.spaceBtwItems,),

                  const TSettingsMenuTile(icon: Iconsax.safe_home, title: 'My Addresses', subtitle: 'Set shopping delivery address', ),
                  const TSettingsMenuTile(icon: Iconsax.shopping_cart, title: 'My Cart', subtitle: 'Add, remove products and move to checkOut', ),
                  const TSettingsMenuTile(icon: Iconsax.bag_tick, title: 'My Orders', subtitle: 'In-progress and Completed Orders',),
                  const TSettingsMenuTile(icon: Iconsax.bank, title: 'Bank Account', subtitle: 'Withdraw balance to register bank account', ),
                  const TSettingsMenuTile(icon: Iconsax.discount_shape, title: 'My Coupons', subtitle: 'List of all discounted coupons', ),
                  const TSettingsMenuTile(icon: Iconsax.notification, title: 'Notification', subtitle: 'Set all kind of notification message', ),
                  const TSettingsMenuTile(icon: Iconsax.security_card, title: 'Account Privacy', subtitle: 'Manage data usage and connected account', ),

                  // --------- App Setting
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  const TSectionHeading(title: 'App Settings', showActionButton: false,),
                  const SizedBox(height: TSizes.spaceBtwItems,),
                  const TSettingsMenuTile(icon: Iconsax.document_upload, title: 'load Data', subtitle: 'Upload data to your cloud firebase',),
                  TSettingsMenuTile(icon: Iconsax.location, title: 'Geolocation', subtitle: 'Set recommendation based on location',
                      trailing: Switch(value: true, onChanged: (value){})),
                  TSettingsMenuTile(icon: Iconsax.security_user, title: 'Safe Mode', subtitle: 'Search result is safe for all ages',
                      trailing: Switch(value: false, onChanged: (value){})),
                  TSettingsMenuTile(icon: Iconsax.image, title: 'HD Image Quality', subtitle: 'Set Image quality to be seen',
                      trailing: Switch(value: false, onChanged: (value){})),


                  // --------- LogOut button
                  const SizedBox(height: TSizes.spaceBtwSections,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                 const  SizedBox(height: TSizes.spaceBtwSections * 2.5,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


