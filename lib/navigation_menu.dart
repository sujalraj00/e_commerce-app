import 'package:e_commerce/features/shop/screens/home/home.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : TColors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
          destinations: const[
             NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
             NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
             NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
             NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),

          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex =0.obs;  // Obx is the observer and obs is what is being observed

  final screen  = [const HomeScreen(),Container(color: Colors.purple,),Container(color: Colors.red,),Container(color: Colors.pink,)];
}
