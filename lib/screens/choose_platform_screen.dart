import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/login_screen.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class ChoosePlatformScreen extends StatelessWidget {
  const ChoosePlatformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 32),
                  AppAssets.reviewtuLogoBlack,
                  const SizedBox(height: 32),
                  const Text(
                    "Create your reviewtu profile, follow \nothers & discover social reviews.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 21),
                  PlatformWidget(
                    icon: AppAssets.userIcon,
                    text: "Use phone or email address",
                  ),
                  const SizedBox(height: 10),
                  PlatformWidget(
                    icon: SizedBox(
                      width: 21,
                      height: 20,
                      child: AppAssets.tiktokIconPng,
                    ),
                    text: "Continue with Tik Tok",
                  ),
                  const SizedBox(height: 10),
                  PlatformWidget(
                    icon: SizedBox(
                      width: 21,
                      height: 20,
                      child: AppAssets.instagramIconPng,
                    ),
                    text: "Continue with Instagram",
                  ),
                  const SizedBox(height: 10),
                  PlatformWidget(
                    icon: SizedBox(
                      width: 21,
                      height: 20,
                      child: AppAssets.facebookIconPng,
                    ),
                    text: "Continue with Facebook",
                  ),
                  const SizedBox(height: 10),
                  PlatformWidget(
                    icon: SizedBox(
                      width: 21,
                      height: 20,
                      child: AppAssets.twitterIconPng,
                    ),
                    text: "Continue with Twitter",
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Or",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 42.0),
                    child: PrimaryButtonWidget(
                      buttonHeight: 30,
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        backgroundColor: AppColors.black,
                        textColor: AppColors.white,
                        buttonText: "Log In"),
                  ),
                  const Spacer(),
                  const Text(
                    "By signing up, you agtee to our Tearms, Data Policy\nand Cookies Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class PlatformWidget extends StatelessWidget {
  const PlatformWidget(
      {Key? key, required this.icon, required this.text, this.callback})
      : super(key: key);

  final Widget icon;
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
            children: [
              const SizedBox(width: 39),
              icon,
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
