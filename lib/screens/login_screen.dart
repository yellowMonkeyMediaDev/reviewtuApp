import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
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
                child: TextInputWidget(
                  showSuffixIcon: false,
                  placeholder: 'Username or email',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.lightGrey, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 13),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextInputWidget(
                  showSuffixIcon: false,
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
                      Navigator.pushNamed(context, '/home');
                    },
                    backgroundColor: AppColors.black,
                    textColor: AppColors.white,
                    buttonText: "Log In"),
              ),
              const SizedBox(height: 26),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/forgotYourPassword');
                },
                child: const Text(
                  "Forgot Password?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 26),
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
                      fontWeight: FontWeight.w400),
                ),
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
                      Navigator.pushNamed(
                        context,
                        '/registration',
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

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({
    Key? key,
    required this.placeholder,
    this.obscureText,
    this.showSuffixIcon,
    required this.border,
    this.suffixIcon,
    this.suffixIconCallback,
    this.height,
    this.textAlign,
    this.onSubmitted,
    this.controller,
    this.prefixIcon,
  }) : super(key: key);

  final String placeholder;
  final InputBorder border;
  final bool? obscureText;
  final bool? showSuffixIcon;
  final Widget? suffixIcon;
  final Function()? suffixIconCallback;
  final Function(String)? onSubmitted;
  final double? height;
  final TextAlign? textAlign;
  final TextEditingController? controller;
  final Widget? prefixIcon;

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 40,
      child: TextField(
        controller: _controller,
        onSubmitted: widget.onSubmitted ?? (string) {},
        keyboardType: TextInputType.text,
        autofocus: true,
        textAlign: widget.textAlign ?? TextAlign.start,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: widget.obscureText ?? false,
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(
            maxHeight: 15,
          ),
          prefixIcon: widget.prefixIcon,
          suffixIconConstraints: const BoxConstraints(maxHeight: 19),
          suffixIcon: _controller.text.isNotEmpty
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      _controller.clear();
                    });
                  },
                  child: widget.showSuffixIcon ?? true
                      ? Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: widget.suffixIcon ?? AppAssets.checkedIcon,
                        )
                      : const SizedBox(),
                )
              : const SizedBox(),
          fillColor: AppColors.extraLightGrey,
          hintText: widget.placeholder,
          border: widget.border,
        ),
      ),
    );
  }
}
