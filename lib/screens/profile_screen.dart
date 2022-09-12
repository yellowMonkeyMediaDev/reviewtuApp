import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/constants/profile_tab.dart';
import 'package:reviewtu_app/widgets/no_content_yet_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileTab selectedTab = ProfileTab.reviews;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ProfileTab.values.length,
      child: NestedScrollView(
        headerSliverBuilder: (context, flag) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const ProfileInfoWidget(),
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
                      child:
                          isSelected ? getTabActiveIcon(tab) : getTabIcon(tab)),
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
                  const NoContentYetWidget(
                    title: 'No Reviews Yet.',
                    description:
                        "Post a review! combine it with videos and photos",
                    buttonText: 'Search for things to review',
                  ),
                  Container(
                    color: Colors.red,
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
    );
  }
}

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({Key? key}) : super(key: key);

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
              const NumberOfFollowersWidget(
                label: "Followers",
                number: 1233,
              ),
              const NumberOfFollowersWidget(
                label: "Following",
                number: 1233,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            "Mike Jones",
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
                color: AppColors.greyForProfileText),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SizedBox(
                width: 110,
                height: 40,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(AppColors.lightGrey),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Spacer(),
                      Text(
                        "Edit Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.black),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Container(
              width: 46,
              height: 38,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
                child: AppAssets.arrowUpIcon,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class NumberOfFollowersWidget extends StatelessWidget {
  const NumberOfFollowersWidget({
    Key? key,
    required this.number,
    required this.label,
  }) : super(key: key);

  final int number;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          number.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.greyForProfileText),
        )
      ],
    );
  }
}
