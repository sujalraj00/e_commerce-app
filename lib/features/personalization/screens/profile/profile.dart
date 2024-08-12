import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/t_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/change_name.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return  Scaffold(
      appBar: const TAppbar(title: Text('Profile'),  showBackArrow: true ,),

      // Body-----
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture -----------
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, height: 80, width: 80,),
                    TextButton(onPressed: () {}, child: const Text('Change Profile Picture')),
                  ],
                ),
              ),

              //----------Details
              const SizedBox(height: TSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // profile info
              const TSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'Name', value: controller.user.value.fullName, onPressed: () => Get.to(() => const ChangeName())),
              TProfileMenu(title: 'UserName', value: controller.user.value.username, onPressed: () {  },),

              const SizedBox(height: TSizes.spaceBtwItems,),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              // ----Heading personal info
              const TSectionHeading(title: 'Personal Information' , showActionButton: false,),
              const SizedBox(height: TSizes.spaceBtwItems,),

              TProfileMenu(title: 'UserId', value:  controller.user.value.id ,icon: Iconsax.copy, onPressed: () {  },),
              TProfileMenu(title: 'Email', value:  controller.user.value.email , onPressed: () {  },),
              TProfileMenu(title: 'PhoneNumber', value:  controller.user.value.phoneNumber , onPressed: () {  },),
              TProfileMenu(title: 'Gender', value:  'Male' , onPressed: () {  },),
              TProfileMenu(title: 'Date of Birth', value: '23-05-2024', onPressed: () {  },),

              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems,),

              Center(
                child: TextButton(
                  child: const Text('Close Account' , style: TextStyle(color: Colors.red),),
                  onPressed: (){},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


