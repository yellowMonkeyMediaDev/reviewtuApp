import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/login&Registration/login_screen.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';
import 'package:reviewtu_app/widgets/no_content_yet_widget.dart';

class FollowersScreen extends StatefulWidget {
  const FollowersScreen({Key? key}) : super(key: key);

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
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
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: <Widget>[
            TabBar(
              labelColor: AppColors.black,
              unselectedLabelColor: AppColors.grey,
              indicator: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: AppColors.black, width: 1.5)),
              ),
              tabs: const [
                Tab(
                  text: "1850 Followers",
                ),
                Tab(
                  text: "1002 Following",
                ),
                Tab(
                  text: "Suggested",
                ),
              ],
              onTap: (index) {},
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ListOfFollowersWidget(),
                  ListOfFollowersWidget(),
                  SuggestedUsersList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FollowUserWidget extends StatelessWidget {
  const FollowUserWidget({
    Key? key,
    required this.profilePhoto,
    required this.name,
    required this.username,
    this.callback,
    required this.buttonText,
  }) : super(key: key);

  final Widget profilePhoto;
  final String name;
  final String username;
  final Function()? callback;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                profilePhoto,
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            TextButton(
              onPressed: callback ?? () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.skyBlue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: AppColors.skyBlue),
                  ),
                ),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchFollowersWidget extends StatelessWidget {
  const SearchFollowersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        border: Border.all(
          color: AppColors.lightGrey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: TextInputWidget(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: AppAssets.searchGreyIcon,
          ),
          placeholder: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class ListOfFollowersWidget extends StatelessWidget {
  const ListOfFollowersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 12,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: SearchFollowersWidget(),
        ),
        const SizedBox(
          height: 6,
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        FollowUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
      ],
    );
  }
}

class SuggestedUserWidget extends StatelessWidget {
  const SuggestedUserWidget({
    Key? key,
    required this.profilePhoto,
    required this.name,
    required this.username,
    this.callback,
    required this.buttonText,
  }) : super(key: key);

  final Widget profilePhoto;
  final String name;
  final String username;
  final Function()? callback;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                profilePhoto,
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      username,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                  onPressed: callback ?? () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.skyBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: AppColors.skyBlue),
                      ),
                    ),
                  ),
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white),
                  ),
                ),
                const SizedBox(
                  width: 18,
                ),
                AppAssets.xIconBlack,
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestedUsersList extends StatelessWidget {
  const SuggestedUsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
        SuggestedUserWidget(
          buttonText: "Follow",
          name: "Lincoln Bergson",
          profilePhoto: AppAssets.tomWeissPhotoRounded,
          username: "@mikejones",
        ),
      ],
    );
  }
}
