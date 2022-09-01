import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssets.reviewtuLogoWhite,
          const SizedBox(height: 17),
          const DefaultTextStyle(
            style: TextStyle(
                color: AppColors.white, fontSize: 15, fontWeight: FontWeight.w500),
            child: Text("Powered By Social Reviews",),
          )
        ],
      )),
    );
  }
}
