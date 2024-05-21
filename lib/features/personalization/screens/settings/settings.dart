import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:t_store/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  const TUserProfileTile(),
                  const SizedBox(height: TSizes.spaceBtwSections + 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                      title: 'My Addresses',
                      subtitle: 'Set shopping delivery address',
                      icon: Iconsax.safe_home),
                  const TSettingsMenuTile(
                      title: 'My Cart',
                      subtitle: 'Add, remove products and move to checkout',
                      icon: Iconsax.shopping_cart),
                  const TSettingsMenuTile(
                      title: 'My Orders',
                      subtitle: 'In-progress and Completed orders',
                      icon: Iconsax.bag_tick),
                  const TSettingsMenuTile(
                      title: 'Bank Account',
                      subtitle: 'Withdraw balance to registered bank account',
                      icon: Iconsax.bank),
                  const TSettingsMenuTile(
                      title: 'My Coupons',
                      subtitle: 'List of all the discounted coupons',
                      icon: Iconsax.discount_shape),
                  const TSettingsMenuTile(
                      title: 'Notifications',
                      subtitle: 'Set any kind of notification message',
                      icon: Iconsax.notification),
                  const TSettingsMenuTile(
                      title: 'Account Privacy',
                      subtitle: 'Manage data usage and connected accounts',
                      icon: Iconsax.security_card),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const TSettingsMenuTile(
                      title: 'Load Data',
                      subtitle: 'Upload data to your Cloud Firebase',
                      icon: Iconsax.document_upload),
                  TSettingsMenuTile(
                      title: 'Geolocation',
                      subtitle: 'Set recommendation based on location',
                      icon: Iconsax.location,
                      trailling: Switch(value: true, onChanged: (value) {})),
                  TSettingsMenuTile(
                      title: 'Safe Mode',
                      subtitle: 'Search result is safe for all ages',
                      icon: Iconsax.security_user,
                      trailling: Switch(value: false, onChanged: (value) {})),
                  TSettingsMenuTile(
                      title: 'HD Image Quality',
                      subtitle: 'Set image quality to be seen',
                      icon: Iconsax.image,
                      trailling: Switch(value: false, onChanged: (value) {})),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  ),
                  // const SizedBox(
                  //   height: TSizes.spaceBtwSections * 2.5,
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
