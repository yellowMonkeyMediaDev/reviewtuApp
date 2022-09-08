import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/forgot_your_password_screen.dart';
import 'package:reviewtu_app/screens/home_screen.dart';
import 'package:reviewtu_app/screens/login_screen.dart';
import 'package:reviewtu_app/widgets/dialog_holder_widget.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class PasswordLoginScreen extends StatefulWidget {
  const PasswordLoginScreen({Key? key}) : super(key: key);

  @override
  State<PasswordLoginScreen> createState() => _PasswordLoginScreenState();
}

class _PasswordLoginScreenState extends State<PasswordLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  const Text(
                    "Enter Your Password",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextInputWidget(
                      placeholder: 'Password',
                      obscureText: true,
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.lightGrey, width: 1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 13),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: PrimaryButtonWidget(
                        buttonHeight: 40,
                        callback: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                        backgroundColor: AppColors.black,
                        textColor: AppColors.white,
                        buttonText: "Log In"),
                  ),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Back",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 26),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoModalPopupRoute(
                          barrierDismissible: true,
                          builder: (context) => DialogHolderWidget(
                              route: ForgotYourPasswordScreen.route,
                              builder: const ForgotYourPasswordScreen(),
                              onDismissed: (_) {
                                Navigator.of(context).pop();
                              }),
                        ),
                      );
                    },
                    child: const Text(
                      "Forgot Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
