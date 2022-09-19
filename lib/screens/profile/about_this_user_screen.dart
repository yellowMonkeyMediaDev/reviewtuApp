import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class AboutThisUserScreen extends StatefulWidget {
  const AboutThisUserScreen({Key? key}) : super(key: key);

  @override
  State<AboutThisUserScreen> createState() => _AboutThisUserScreenState();
}

class _AboutThisUserScreenState extends State<AboutThisUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        automaticallyImplyLeading: false,
        leadingWidget: AppAssets.leftArrowBlackIcon,
        title: "About this Account",
        border: Border.all(width: 0),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(child: SizedBox(width: 72, height: 72, child: AppAssets.profileScreenProfileImage)),
            const SizedBox(
              height: 17,
            ),
            const Center(
              child: Text(
                "James Peach",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            const Center(
              child: Text(
                "@JamesPeach",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: AppColors.skyBlue),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Divider(),
            const SizedBox(
              height: 17,
            ),
            const Text(
              "Account Information",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "In order to keep Reviewtu as authentic as possible we’re\nshowing information on accounts that reach a lot of\npeople",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: AppColors.greyForProfileText),
            ),
          ],
        ),
      ),
    );
  }
}
