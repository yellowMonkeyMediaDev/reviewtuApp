import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/registration_screen.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                color: AppColors.extraLightGrey,
                child: Center(
                    child: SizedBox(
                  width: 100,
                  child: AppAssets.reviewtuLogoBlack,
                )),
              ),
              const SizedBox(height: 35),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextInputWidget(placeholder: 'Username or email'),
              ),
              const SizedBox(height: 13),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextInputWidget(
                  placeholder: 'Password',
                  obscureText: true,
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
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    backgroundColor: AppColors.black,
                    textColor: AppColors.white,
                    buttonText: "Log In"),
              ),
              const SizedBox(height: 26),
              const Text(
                "Forgot Password?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 26),
              const Text(
                "Back",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              const Text(
                "Or",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
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
                            builder: (context) => const RegistrationScreen()),
                      );
                    },
                    backgroundColor: AppColors.lightGrey,
                    textColor: AppColors.black,
                    buttonText: "Create a New Account"),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    Key? key,
    required this.placeholder,
    this.obscureText,
    this.showSuffixIcon,
  }) : super(key: key);

  final String placeholder;
  final bool? obscureText;
  final bool? showSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          suffixIconConstraints: const BoxConstraints(maxHeight: 19),
          suffixIcon: showSuffixIcon ?? false
              ? Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: AppAssets.checkedIcon,
                )
              : const SizedBox(),
          fillColor: AppColors.extraLightGrey,
          hintText: placeholder,
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey, width: 1),
          ),
        ),
      ),
    );
  }
}
