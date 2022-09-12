import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class SignInSavedDataLoginSettingsScreen extends StatefulWidget {
  const SignInSavedDataLoginSettingsScreen({Key? key}) : super(key: key);

  @override
  State<SignInSavedDataLoginSettingsScreen> createState() =>
      _SignInSavedDataLoginSettingsScreenState();
}

class _SignInSavedDataLoginSettingsScreenState
    extends State<SignInSavedDataLoginSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraLightGrey,
      appBar: ReviewtuNavigationBarWidget(
        automaticallyImplyLeading: false,
        leadingWidget: Row(
          children: [
            AppAssets.backArrowWhiteIcon,
            const SizedBox(
              width: 10,
            ),
            const Text(
              "Close",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
            ),
          ],
        ),
        title: "Login Settings",
        titleTextColor: AppColors.white,
        backgroundColor: AppColors.black,
        leadingWidgetCallback: () {
          Navigator.pop(context);
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              width: 114,
              height: 112,
              child: AppAssets.profilepicture,
            ),
          ),
          const SizedBox(height: 14),
          const Center(
            child: Text(
              'Mike Jones',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.black),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Container(
            color: AppColors.white,
            child: Column(
              children: [
                ChooseTypeOfLoginWidget(
                  callback: () {
                    Navigator.pushNamed(context, '/passwordLogin');
                  },
                  title: "Remove saved login information",
                  subtitle: "Use password to login",
                ),
                ChooseTypeOfLoginWidget(
                  callback: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  title: "Remove account",
                  subtitle: "Use username and password to login",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChooseTypeOfLoginWidget extends StatelessWidget {
  const ChooseTypeOfLoginWidget({
    Key? key,
    required this.title,
    required this.subtitle,
    this.callback,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: GestureDetector(
        onTap: callback ?? () {},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 57,
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: AppColors.greyForProfileText, width: 0.3)),
              color: AppColors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: AppColors.red,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                subtitle,
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
