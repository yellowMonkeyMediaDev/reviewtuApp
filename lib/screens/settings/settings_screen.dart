import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
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
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(color: Colors.grey[800]),
                hintText: 'Search',
                // prefixIcon:  ,
                fillColor: Color.fromRGBO(118, 118, 128, 0.12),
              ),
            ),
            GestureDetector(
              child: SizedBox(
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
                        const Text('Follow and Invite Friends '),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
              onTap: () =>
                  {Navigator.pushNamed(context, "/followAndInviteFriends")},
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/yourActivity")},
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 28,
                          height: 22,
                          child: AppAssets.yourActivityPng,
                        ),
                        const SizedBox(width: 16),
                        const Text('Your Activity'),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/notifications")},
              child: SizedBox(
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
                        const Text('Notifications'),
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
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/privacy")},
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 28, height: 22, child: AppAssets.privacyPng),
                        const SizedBox(width: 16),
                        const Text('Privacy '),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/security")},
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 28,
                            height: 22,
                            child: AppAssets.securityPng),
                        const SizedBox(width: 16),
                        const Text('Security'),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/account")},
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 28, height: 22, child: AppAssets.accountPng),
                        const SizedBox(width: 16),
                        const Text('Account '),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/help")},
              child: SizedBox(
                height: 44,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 28, height: 22, child: AppAssets.helpPng),
                        const SizedBox(width: 16),
                        const Text('Help'),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/accountInfo")},
              child: SizedBox(
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
                        const Text('Account Info'),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () =>
                  {Navigator.pushNamed(context, "/interestsAndPrefrences")},
              child: SizedBox(
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
                        const Text('Interests and Prefrences'),
                      ],
                    ),
                    SizedBox(
                        width: 7,
                        height: 12,
                        child: AppAssets.goFowardButtonPng),
                  ],
                ),
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
                      const Text(
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
    return Container();
  }
}
