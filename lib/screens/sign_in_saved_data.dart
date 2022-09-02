import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

class SignInSavedDataScreen extends StatefulWidget {
  const SignInSavedDataScreen({Key? key}) : super(key: key);

  @override
  State<SignInSavedDataScreen> createState() => _SignInSavedDataScreenState();
}

class _SignInSavedDataScreenState extends State<SignInSavedDataScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    height: 23, width: 100, child: AppAssets.reviewtuLogoBlack),
                Column(
                  children: [
                    SizedBox(
                      width: 114,
                      height: 112,
                      child: AppAssets.profilepicture,
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Mike Jones',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                        width: 22,
                        height: 22,
                        child: AppAssets.settingsIconPng),
                    const SizedBox(height: 10),
                    const SignInScreenButton(
                      text: 'Log in to Another Account',
                    ),
                    const SizedBox(height: 10),
                    const SignInScreenButton(
                      text: 'Sign Up for Reviewtu',
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

    return Container();
  }
}

class SignInScreenButton extends StatelessWidget {
  const SignInScreenButton({Key? key, required this.text, this.callback})
      : super(key: key);

  final String text;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: GestureDetector(
        onTap: callback ?? () {},
        child: Container(
          height: 34,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            border: Border.all(
              color: AppColors.lightGrey,
            ),
            borderRadius: BorderRadius.circular(13),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
