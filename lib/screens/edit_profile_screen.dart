import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        border: Border.all(width: 0, color: AppColors.white),
        automaticallyImplyLeading: false,
        title: "Edit Profile",
        leadingWidget: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: AppAssets.leftArrowBlackIcon),
        trailingWidget: const Text(
          "Done",
          style: TextStyle(
              color: AppColors.greyForProfileText,
              fontWeight: FontWeight.w400,
              fontSize: 17),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 23,
            ),
            Center(
              child: SizedBox(
                  width: 95, height: 94, child: AppAssets.editProfilePicture),
            ),
            const SizedBox(
              height: 13,
            ),
            const Center(
              child: Text(
                "Change Photo",
                style: TextStyle(
                    color: AppColors.skyBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "About You",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const EditProfileItemWidget(
              data: 'Mike Jones',
              label: 'Name',
            ),
            const SizedBox(
              height: 12,
            ),
            const EditProfileItemWidget(
              data: 'mikejones',
              label: 'Username',
            ),
            const SizedBox(
              height: 17,
            ),
            const BiographyWidget(
              label: "Bio",
              description:
                  '#Twitch #Gamer | #graphicdesigner #Artist | 🇩🇿 |\nStream with me! www.jamesp.com',
            ),
            EditProfileItemWidget(
              data: 'reviewtu/@mikejones',
              label: 'Link',
              trailingWidget: AppAssets.copyIcon,
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Social",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const EditProfileItemWidget(
              data: '@MikeJones',
              label: 'Instagram',
              dataTextColor: AppColors.skyBlue,
            ),
            const SizedBox(
              height: 12,
            ),
            const EditProfileItemWidget(
              data: 'Add twitter to your profile',
              label: 'Twitter',
            ),
            const SizedBox(
              height: 12,
            ),
            const EditProfileItemWidget(
              data: 'Add tiktok to your profile',
              label: 'TikTok',
            ),
            const SizedBox(
              height: 12,
            ),
            const EditProfileItemWidget(
              data: 'Add facebook to your profile',
              label: 'Facebook',
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileItemWidget extends StatelessWidget {
  const EditProfileItemWidget({
    Key? key,
    required this.label,
    required this.data,
    this.trailingWidget,
    this.dataTextColor,
  }) : super(key: key);

  final String label;
  final String data;
  final Widget? trailingWidget;
  final Color? dataTextColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.greyForProfileText, width: 0.3),
          ),
        ),
        height: 44,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              Row(
                children: [
                  Text(
                    data,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: dataTextColor ?? AppColors.greyForProfileText),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  trailingWidget != null
                      ? trailingWidget ?? AppAssets.goFowardButtonPng
                      : SizedBox(
                          height: 12,
                          width: 7,
                          child: AppAssets.goFowardButtonPng,
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BiographyWidget extends StatelessWidget {
  const BiographyWidget({
    Key? key,
    required this.label,
    required this.description,
  }) : super(key: key);

  final String label;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.greyForProfileText, width: 0.3),
          ),
        ),
        height: 73,
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  color: AppColors.greyForProfileText,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
