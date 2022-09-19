import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/constants/profile_tab.dart';
import 'package:reviewtu_app/screens/profile_screen.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';
import 'package:reviewtu_app/widgets/no_content_yet_widget.dart';
import 'package:reviewtu_app/widgets/notification_settings_popup_widget.dart';
import 'package:reviewtu_app/widgets/reviews_grid_view_widget.dart';

class OtherUsersProfileScreen extends StatefulWidget {
  const OtherUsersProfileScreen({Key? key}) : super(key: key);

  @override
  State<OtherUsersProfileScreen> createState() =>
      _OtherUsersProfileScreenState();
}

class _OtherUsersProfileScreenState extends State<OtherUsersProfileScreen> {
  ProfileTab selectedTab = ProfileTab.reviews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        automaticallyImplyLeading: false,
        title: "James Peach",
        titleTrailingIcon: AppAssets.verifiedProfileIcon,
        leadingWidget: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: AppAssets.leftArrowBlackIcon,
        ),
        trailingWidget: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: () => showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => const NotificationSettingsWidget(),
                    ),
                child: AppAssets.bellIcon),
            const SizedBox(
              width: 12,
            ),
            GestureDetector(
                onTap: () {
                  showCupertinoModalPopup<void>(
                    context: context,
                    builder: (BuildContext context) => CupertinoActionSheet(
                      actions: <CupertinoActionSheetAction>[
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pushNamed(context, "/aboutThisUser");
                          },
                          isDefaultAction: true,
                          child: const Text(
                            'About this Account',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDestructiveAction: true,
                          child: const Text(
                            'Block',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Restrict',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Report',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Copy Profile URL',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Hide your Story',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                        CupertinoActionSheetAction(
                          isDefaultAction: true,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Share this Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 20),
                          ),
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: AppAssets.threeDotsRoundedIcon),
          ],
        ),
      ),
      body: DefaultTabController(
        length: ProfileTab.values.length,
        child: NestedScrollView(
          headerSliverBuilder: (context, flag) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const OtherUsersProfileInfoWidget(),
                    const SizedBox(
                      height: 14,
                    ),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              TabBar(
                labelColor: AppColors.black,
                unselectedLabelColor: AppColors.grey,
                indicator: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: AppColors.black, width: 1.5)),
                ),
                tabs: ProfileTab.values.map((tab) {
                  final isSelected = tab == selectedTab;
                  return Tab(
                    iconMargin: const EdgeInsets.only(bottom: 6.0),
                    icon: SizedBox(
                        width: 28,
                        height: 24,
                        child: isSelected
                            ? getTabActiveIcon(tab)
                            : getTabIcon(tab)),
                  );
                }).toList(),
                onTap: (index) {
                  if (index != selectedTab.index) {
                    setState(() {
                      selectedTab = ProfileTab.values[index];
                    });
                  }
                },
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    const ReviewsGridViewWidget(),
                    // const NoContentYetWidget(
                    //   title: 'No Reviews Yet.',
                    //   description:
                    //       "Post a review! combine it with videos and photos",
                    //   buttonText: 'Search for things to review',
                    // ),
                    const NoContentYetWidget(
                      title: 'No Photo Reviews',
                      description:
                          "Post a review! combine it with videos and photos ",
                      buttonText: 'Upload',
                    ),
                    Container(
                      color: Colors.yellow,
                    ),
                    Container(
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherUsersProfileInfoWidget extends StatefulWidget {
  const OtherUsersProfileInfoWidget({
    Key? key,
    this.followButtonCallback,
    this.messageButtonCallback,
  }) : super(key: key);

  final Function()? followButtonCallback;
  final Function()? messageButtonCallback;

  @override
  State<OtherUsersProfileInfoWidget> createState() =>
      _OtherUsersProfileInfoWidgetState();
}

class _OtherUsersProfileInfoWidgetState
    extends State<OtherUsersProfileInfoWidget> {
  bool following = false;
  bool suggestedReviewersVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //const SizedBox(width: 18),
              SizedBox(
                  height: 73,
                  width: 73,
                  child: AppAssets.profileScreenProfileImage),
              const NumberOfFollowersWidget(
                label: "Reviews",
                number: 1233,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/followers');
                },
                child: const NumberOfFollowersWidget(
                  label: "Followers",
                  number: 1233,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/followers');
                },
                child: const NumberOfFollowersWidget(
                  label: "Following",
                  number: 1233,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            "James Peach",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            "#Twitch #Gamer | #graphicdesigner #Artist | 🇩🇿 |\n Stream with me! www.jamesp.com",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.greyForProfileText,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: following
                  ? SizedBox(
                      width: 110,
                      height: 40,
                      child: OtherUsersProfileButtonWidget(
                        buttonLabel: "Follow",
                        callback: widget.followButtonCallback ??
                            () {
                              setState(() {
                                following = !following;
                              });
                            },
                      ),
                    )
                  : ButtonWithIcon(
                      callback: widget.followButtonCallback ??
                          () {
                            showCupertinoModalPopup<void>(
                              context: context,
                              builder: (BuildContext context) =>
                                  CupertinoActionSheet(
                                title: const Text(
                                  'James Peach',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                                ),
                                actions: <CupertinoActionSheetAction>[
                                  CupertinoActionSheetAction(
                                    isDestructiveAction: true,
                                    onPressed: () {
                                      setState(() {
                                        following = !following;
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Unfollow',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 20),
                                    ),
                                  ),
                                  CupertinoActionSheetAction(
                                    isDefaultAction: true,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Mute',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                                cancelButton: CupertinoActionSheetAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                      icon: AppAssets.alreadyFollowingIconBlack),
            ),
            const SizedBox(
              width: 12,
            ),
            SizedBox(
              width: 110,
              height: 40,
              child: OtherUsersProfileButtonWidget(
                buttonLabel: "Message",
                callback: () {},
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            ButtonWithIcon(
              icon: AppAssets.instagramIconBlack,
            ),
            const SizedBox(
              width: 12,
            ),
            ButtonWithIcon(
              icon: suggestedReviewersVisible
                  ? AppAssets.downArowRoundedBlack
                  : AppAssets.arrowUpIcon,
              callback: () {
                setState(() {
                  suggestedReviewersVisible = !suggestedReviewersVisible;
                });
              },
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        suggestedReviewersVisible
            ? const SuggestedReviewersWidget()
            : const SizedBox(),
      ],
    );
  }
}

class OtherUsersProfileButtonWidget extends StatelessWidget {
  const OtherUsersProfileButtonWidget({
    Key? key,
    this.callback,
    required this.buttonLabel,
  }) : super(key: key);

  final Function()? callback;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(AppColors.lightGrey),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
      onPressed: callback ?? () {},
      child: Row(
        children: [
          const Spacer(),
          Text(
            buttonLabel,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.black),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    Key? key,
    required this.icon,
    this.callback,
    this.backgroundColor,
  }) : super(key: key);

  final Widget icon;
  final Function()? callback;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ?? () {},
      child: Container(
        width: 46,
        height: 38,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.lightGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
          child: icon,
        ),
      ),
    );
  }
}

class SuggestedReviewersWidget extends StatelessWidget {
  const SuggestedReviewersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: AppColors.extraLightGrey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Suggested Reviewers",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.greyForProfileText,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.skyBlue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.michaelCohenPhotoRounded,
                        name: "Mika Jameston",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.tomWeissPhotoRounded,
                        name: "Tom Weiss",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.michaelCohenPhotoRounded,
                        name: "Michael Cohen",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.michaelCohenPhotoRounded,
                        name: "Lincoln Bergson",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.tomWeissPhotoRounded,
                        name: "Tom Weiss",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.michaelCohenPhotoRounded,
                        name: "Michael Cohen",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.tomWeissPhotoRounded,
                        name: "Tom Weiss",
                        numberOfFollowers: 1997),
                    SuggestedReviewerCard(
                        profilePhoto: AppAssets.michaelCohenPhotoRounded,
                        name: "Michael Cohen",
                        numberOfFollowers: 1997),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestedReviewerCard extends StatelessWidget {
  const SuggestedReviewerCard({
    Key? key,
    required this.profilePhoto,
    required this.name,
    required this.numberOfFollowers,
  }) : super(key: key);

  final Widget profilePhoto;
  final String name;
  final int numberOfFollowers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            color: AppColors.white),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(width: 70, height: 70, child: profilePhoto),
              const SizedBox(
                height: 16,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$numberOfFollowers Followers',
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
