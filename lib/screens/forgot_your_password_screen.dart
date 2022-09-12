import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

import 'login_screen.dart';

class ForgotYourPasswordScreen extends StatefulWidget {
  const ForgotYourPasswordScreen({Key? key}) : super(key: key);

  static const route = '/forgot_your_password_screen';

  @override
  State<ForgotYourPasswordScreen> createState() =>
      _ForgotYourPasswordScreenState();
}

class _ForgotYourPasswordScreenState extends State<ForgotYourPasswordScreen> {
  bool displaySearchWidgets = true;
  bool displaySearchResultsWidgets = false;
  bool displayCodeSentWidgets = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 7,
              ),
              AppAssets.lineBlackIcon,
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: AppAssets.leftArrowBlackIcon),
                    const DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black),
                      child: Text(
                        "Cancel",
                      ),
                    )
                  ],
                ),
              ),
              displaySearchWidgets
                  ? AccountSearchWidget(
                      onSubmitted: (text) {
                        setState(() {
                          displaySearchResultsWidgets = true;
                          displayCodeSentWidgets = false;
                          displaySearchWidgets = false;
                        });
                      },
                    )
                  : const SizedBox(),
              displaySearchWidgets
                  ? const LetsFindYourAccountWidget()
                  : const SizedBox(),
              displaySearchResultsWidgets
                  ? AccountFoundWidget(
                      onContinueCallback: () {
                        setState(() {
                          displaySearchResultsWidgets = false;
                          displayCodeSentWidgets = true;
                          displaySearchWidgets = false;
                        });
                      },
                      onLoginWithPasswordCallback: () {
                        Navigator.pop(context);
                      },
                    )
                  : const SizedBox(),
              displayCodeSentWidgets
                  ? const CodeHasBeenSentWidget()
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmViaWidget extends StatelessWidget {
  const ConfirmViaWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.callback,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Function()? callback;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final unSelectedOption = Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.black,
          width: 1,
        ),
      ),
    );
    final selectedOption = AppAssets.blueCircleIcon;
    return GestureDetector(
      onTap: callback ?? () {},
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: AppColors.greyForProfileText, width: 0.3)),
            color: AppColors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: AppColors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: SizedBox(
                  width: 21,
                  height: 24,
                  child: isSelected ? selectedOption : unSelectedOption),
            ),
          ],
        ),
      ),
    );
  }
}

class AccountSearchWidget extends StatelessWidget {
  const AccountSearchWidget({Key? key, this.onSubmitted}) : super(key: key);

  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextInputWidget(
      onSubmitted: onSubmitted ?? (string) {},
      placeholder: 'Search Phone Number or Email Address...',
      border: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGrey, width: 1),
      ),
      suffixIcon: AppAssets.closeIconRounded,
      showSuffixIcon: true,
    );
  }
}

class LetsFindYourAccountWidget extends StatelessWidget {
  const LetsFindYourAccountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssets.searchBlackIcon,
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Lets find that Reviewtu Account!',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Enter your phone number or email address to search for\n you account.',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class AccountFoundWidget extends StatefulWidget {
  const AccountFoundWidget(
      {Key? key,
      required this.onContinueCallback,
      required this.onLoginWithPasswordCallback})
      : super(key: key);

  final Function() onContinueCallback;
  final Function() onLoginWithPasswordCallback;

  @override
  State<AccountFoundWidget> createState() => _AccountFoundWidgetState();
}

class _AccountFoundWidgetState extends State<AccountFoundWidget> {
  bool isSmsSelected = true;
  bool isEmailSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'We’ll send a code to confirm this\nis your account. ',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
                width: 63, height: 63, child: AppAssets.sendCodeProfileImage),
            const SizedBox(
              width: 17,
            ),
            const Text(
              'James Peach',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          ],
        ),
        const SizedBox(
          height: 33,
        ),
        ConfirmViaWidget(
          title: "Confirm Via SMS",
          subtitle: "+**********12",
          isSelected: isSmsSelected,
          callback: () {
            setState(() {
              isSmsSelected = !isSmsSelected;
              isEmailSelected = !isEmailSelected;
            });
          },
        ),
        ConfirmViaWidget(
          title: "Confirm Via email",
          subtitle: "jamespeach@gmail.com",
          isSelected: isEmailSelected,
          callback: () {
            setState(() {
              isSmsSelected = !isSmsSelected;
              isEmailSelected = !isEmailSelected;
            });
          },
        ),
        const SizedBox(
          height: 15,
        ),
        PrimaryButtonWidget(
          backgroundColor: AppColors.black,
          textColor: AppColors.white,
          buttonText: "Continue",
          buttonHeight: 40,
          callback: widget.onContinueCallback,
        ),
        const SizedBox(
          height: 10,
        ),
        PrimaryButtonWidget(
          backgroundColor: AppColors.white,
          textColor: AppColors.black,
          buttonText: "Log in with Password",
          buttonHeight: 40,
          borderColor: AppColors.black,
          callback: widget.onLoginWithPasswordCallback,
        ),
      ],
    );
  }
}

class CodeHasBeenSentWidget extends StatelessWidget {
  const CodeHasBeenSentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        const Text(
          'A code has been sent to your\nphone. Enter that code here.',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const SizedBox(
          height: 46,
        ),
        const TextInputWidget(
          textAlign: TextAlign.center,
          height: 57,
          placeholder: 'Enter Code',
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey, width: 1),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        PrimaryButtonWidget(
          backgroundColor: AppColors.black,
          textColor: AppColors.white,
          buttonText: "Continue",
          buttonHeight: 40,
          callback: (){
            Navigator.pushNamed(context, '/chooseYourInterests');
          },
        ),
        const SizedBox(
          height: 10,
        ),
        const PrimaryButtonWidget(
          backgroundColor: AppColors.white,
          textColor: AppColors.black,
          buttonText: "Send me another code",
          buttonHeight: 40,
        ),
      ],
    );
  }
}
