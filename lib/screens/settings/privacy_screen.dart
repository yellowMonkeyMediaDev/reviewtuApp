import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../widgets/app_navigation_bar_widget.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        leadingWidget: GestureDetector(child: AppAssets.goBackButton, onTap: () {Navigator.pop(context);},),
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
                          child: AppAssets.inviteFriendsViaWhatsappPng),
                      const SizedBox(width: 16),
                      const Text('Invite Friends Via WhatsApp'),
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
                          child: AppAssets.inviteFriendsViaMessagePng),
                      const SizedBox(width: 16),
                      const Text('Invite Friend Via Message'),
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
                        child: AppAssets.inviteFreindsViaEmailPng,
                      ),
                      const SizedBox(width: 16),
                      const Text('Invite Friends Via Mail'),
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
                          width: 28, height: 22, child: AppAssets.inviteFriendsViaAPng),
                      const SizedBox(width: 16),
                      const Text('Invite Friends Via...' ),
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
