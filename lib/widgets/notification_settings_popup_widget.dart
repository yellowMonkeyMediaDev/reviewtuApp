import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/profile/other_users_profile_screen.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class NotificationSettingsWidget extends StatefulWidget {
  const NotificationSettingsWidget({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsWidget> createState() =>
      _NotificationSettingsWidgetState();
}

class _NotificationSettingsWidgetState
    extends State<NotificationSettingsWidget> {
  bool allSelected = true;
  bool followingSelected = false;
  bool followersSelected = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.darkGrey,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: AppColors.white,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 7,
            ),
            Center(child: AppAssets.smallerLineIcon),
            const SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  const Text(
                    "Notification Settings",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AppAssets.closeIconRoundedGrey,
                  ),
                ],
              ),
            ),
            const Spacer(),
            NotificationsOptionWidget(
              label: "All",
              selected: true,
              icon: AppAssets.bellIconRoundedWhitePng,
              backgroundColor: AppColors.appBlue,
            ),
            NotificationsOptionWidget(
              label: "Following",
              selected: false,
              icon: AppAssets.notificationsWhiteIcon,
              backgroundColor: AppColors.appBlue,
            ),
            NotificationsOptionWidget(
              label: "Followers",
              selected: false,
              icon: AppAssets.turnOffNotificationsIcon,
              backgroundColor: AppColors.appRed,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class NotificationsOptionWidget extends StatelessWidget {
  const NotificationsOptionWidget({
    Key? key,
    required this.label,
    required this.selected,
    required this.icon,
    required this.backgroundColor,
    this.callback,
  }) : super(key: key);

  final String label;
  final bool selected;
  final Widget icon;
  final Color backgroundColor;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: backgroundColor,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
            child: icon,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: callback,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.lightGrey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                    selected ? AppAssets.checkedIconBlue : const SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
