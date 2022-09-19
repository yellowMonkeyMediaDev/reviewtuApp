import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../widgets/app_navigation_bar_widget.dart';

class PrivacyScreen extends StatefulWidget {
   PrivacyScreen ({Key? key}) : super(key: key);

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool privateAccount = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        leadingWidget: GestureDetector(child: AppAssets.goBackButton, onTap: () {Navigator.pop(context);},),
        title: " Privacy",
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

                      const SizedBox(width: 16),
                      const Text('Account Privacy',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      CupertinoSwitch(
                        value: privateAccount,
                        thumbColor: CupertinoColors.white,
                        trackColor: CupertinoColors.systemGrey2.withOpacity(0.14),
                        activeColor: CupertinoColors.systemBlue.withOpacity(0.64),
                        onChanged: (bool? value) {
                          setState(() {
                            privateAccount = value!;
                          });
                        },
                      ),
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
