import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';
import 'package:snapshop/widgets/custom_tile_for_myaccount.dart';
import 'package:snapshop/widgets/logout_button.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: StringResources.myAccount,
        centreTitle: true,
      ),
      body: Container(
        child: ListView(
          children: [
            const ListTile(
              title: Text(
                StringResources.general,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CustomTile(
                image: SvgPicture.asset('lib/assets/icons/contact_icon.svg'),
                title: StringResources.accountDetails,
                subtitle: StringResources.accountDetailsDescription,
                routeName: AppRoutes.accountDetails),
            CustomTile(
              image:
                  SvgPicture.asset('lib/assets/icons/payment_method_icon.svg'),
              title: StringResources.paymentMethod,
              subtitle: StringResources.paymentMethodDescription,
              routeName: AppRoutes.paymentMode,
            ),
            CustomTile(
              image:
                  SvgPicture.asset('lib/assets/icons/delivery_addresses.svg'),
              title: StringResources.deliveryAddresses,
              subtitle: StringResources.deliveryAddressesDescription,
              routeName: AppRoutes.deliveryScreenPage,
            ),
            CustomTile(
              image: SvgPicture.asset(
                  'lib/assets/icons/security_and_password.svg'),
              title: StringResources.securityAndPassword,
              subtitle: StringResources.securityAndPasswordDescription,
              routeName: AppRoutes.changePasswordPage,
            ),
            const ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            CustomTile(
              image:
                  SvgPicture.asset('lib/assets/icons/notifications_icon.svg'),
              title: StringResources.notitfications,
              subtitle: StringResources.notificationsDescription,
              routeName: AppRoutes.notificationPage,
            ),
            CustomTile(
              image: SvgPicture.asset('lib/assets/icons/langauge_icon.svg'),
              title: StringResources.language,
              subtitle: "",
              routeName: AppRoutes.languagePage,
            ),
            CustomTile(
              image:
                  SvgPicture.asset('lib/assets/icons/privacy_and_policy.svg'),
              title: StringResources.privacyAndPolicy,
              subtitle: "",
              routeName: AppRoutes.privacyPolicyScreen,
            ),
            CustomTile(
              image: SvgPicture.asset('lib/assets/icons/contact_us_icon.svg'),
              title: StringResources.contactUs,
              subtitle: "",
              routeName: AppRoutes.contactScreen,
            ),
            LogoutButton(),
          ],
        ),
      ),
    );
  }
}
