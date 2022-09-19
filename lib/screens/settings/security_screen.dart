import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../widgets/app_navigation_bar_widget.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        leadingWidget: GestureDetector(
          child: AppAssets.goBackButton,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: " Security",
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      'Login Security'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
                        child: AppAssets.padlock,
                      ),
                      const SizedBox(width: 16),
                      const Text('Password'),
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
                      SizedBox(width: 28, height: 22, child: AppAssets.arrow),
                      const SizedBox(width: 16),
                      const Text('Login Activity'),
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
                        child: AppAssets.key,
                      ),
                      const SizedBox(width: 16),
                      const Text('Saved Login Information'),
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
                      SizedBox(width: 28, height: 22, child: AppAssets.shield),
                      const SizedBox(width: 16),
                      const Text('Two Factor Authentication'),
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
                      SizedBox(width: 28, height: 22, child: AppAssets.mail),
                      const SizedBox(width: 16),
                      const Text('Email From Reviewtu'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            Divider(
              thickness: 1,
            ),
            const SizedBox(width: 20),
            const Text(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                'Data And History'),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 28, height: 22, child: AppAssets.dataCelluar),
                      const SizedBox(width: 16),
                      const Text('Access Data'),
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
                          width: 28, height: 22, child: AppAssets.downloadData),
                      const SizedBox(width: 16),
                      const Text('Download Data'),
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
                          child: AppAssets.websitesAndApps),
                      const SizedBox(width: 16),
                      const Text('Websites and Apps'),
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
                          child: AppAssets.searchIconThinBlack),
                      const SizedBox(width: 16),
                      const Text('Clear Search History'),
                    ],
                  ),
                  SizedBox(
                      width: 7, height: 12, child: AppAssets.goFowardButtonPng),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
