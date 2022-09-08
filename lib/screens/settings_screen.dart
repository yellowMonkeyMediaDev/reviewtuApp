import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/login_screen.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        leadingWidget: AppAssets.goBackButton,
        title: " Settings",
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28,
                          height: 22,
                          child: AppAssets.followAndInviteFriendsPng),
                      const SizedBox(width: 16),
                      Text('Follow and Invite Friends '),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28,
                          height: 22,
                          child: AppAssets.yourActivityPng),
                      const SizedBox(width: 16),
                      Text('Your Activity'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 22,
                        width: 28,
                        child: AppAssets.notificationsPng,
                      ),
                      const SizedBox(width: 16),
                      Text('Notifications'),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                    width: 7,
                    child: AppAssets.goFowardButtonPng,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28, height: 22, child: AppAssets.privacyPng),
                      const SizedBox(width: 16),
                      Text('Privacy '),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28, height: 22, child: AppAssets.securityPng),
                      const SizedBox(width: 16),
                      Text('Security'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28, height: 22, child: AppAssets.accountPng),
                      const SizedBox(width: 16),
                      Text('Account '),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 28, height: 22, child: AppAssets.helpPng),
                      const SizedBox(width: 16),
                      Text('Help'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28,
                          height: 22,
                          child: AppAssets.accountInfoPng),
                      const SizedBox(width: 16),
                      Text('Account'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28,
                          height: 22,
                          child: AppAssets.interestsAndPrefrencesPng),
                      const SizedBox(width: 16),
                      Text('Interests and Prefrences'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28, height: 22, child: AppAssets.logoutPng),
                      const SizedBox(width: 16),
                      Text(
                        'Logout ',
                        style: TextStyle(color: AppColors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextInputWidget(placeholder: 'Search',

      )
    );
  }
}
