import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../widgets/app_navigation_bar_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen  ({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool pauseAll = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        leadingWidget: GestureDetector(child: AppAssets.goBackButton, onTap: () {Navigator.pop(context);},),
        title: " Notifications",
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
                  Text('Pause All'),
                  CupertinoSwitch(
                    value: pauseAll,
                    thumbColor: CupertinoColors.white,
                    trackColor: CupertinoColors.systemGrey2.withOpacity(0.14),
                    activeColor: CupertinoColors.systemBlue.withOpacity(0.64),
                    onChanged: (bool? value) {
                      setState(() {
                        pauseAll = value!;
                      });
                    },
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

                      const Text('Reviews, comments , photos and videos'),
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

                      const Text('Following and Followers '),
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

                      const Text('Direct message'),
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

                      const Text('From Reviewtu'),
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


                      const Text('Other Notifications Types'),
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

                      const Text('Email and SMS' ),
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
