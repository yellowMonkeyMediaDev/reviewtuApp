import 'package:flutter/cupertino.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/profile/followers_screen.dart';
import 'package:reviewtu_app/widgets/reviews_grid_view_widget.dart';

enum TypesOfSearches { stuff, people, brands }

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TypesOfSearches selectedSegment = TypesOfSearches.stuff;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchFollowersWidget(
                suffixIcon: AppAssets.closeIconRoundedDarkGrey,
                placeholder: "Search music, films and games..",
                radius: 20,
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: CupertinoSlidingSegmentedControl<TypesOfSearches>(
                groupValue: selectedSegment,
                onValueChanged: (TypesOfSearches? value) {
                  if (value != null) {
                    setState(() {
                      selectedSegment = value;
                    });
                  }
                },
                children: const <TypesOfSearches, Widget>{
                  TypesOfSearches.stuff: Text(
                    'Stuff',
                    style: TextStyle(color: AppColors.black),
                  ),
                  TypesOfSearches.people: Text(
                    'People',
                    style: TextStyle(color: AppColors.black),
                  ),
                  TypesOfSearches.brands: Text(
                    'Brands',
                    style: TextStyle(color: AppColors.black),
                  ),
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 49,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recents",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/recentSearches");
                      },
                      child: const Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: AppColors.skyBlue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ...getCorrectRecentSearchWidgets(selectedSegment),
            // const Divider(
            //   thickness: 1,
            // ),
            // const SizedBox(height: 15),
            selectedSegment == TypesOfSearches.stuff ||
                    selectedSegment == TypesOfSearches.brands
                ? Column(
                    children: [
                      SizedBox(
                        height: 49,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "🔥 Trending Now",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.skyBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ...getCorrectRecommendedWidgets(selectedSegment),
                    ],
                  )
                : const SizedBox(),
            selectedSegment == TypesOfSearches.stuff ||
                    selectedSegment == TypesOfSearches.brands
                ? Column(
                    children: [
                      SizedBox(
                        height: 49,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "You Might Like",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "See All",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.skyBlue),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ...getCorrectRecommendedWidgets(selectedSegment),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class RecommendedSearchItemWidget extends StatelessWidget {
  const RecommendedSearchItemWidget({
    Key? key,
    required this.profileImage,
    required this.title,
    this.description,
    this.rating,
  }) : super(key: key);

  final Widget profileImage;
  final String title;
  final String? description;
  final double? rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: AppColors.lightGrey),
          ),
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 51,
                  width: 51,
                  child: profileImage,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    description != null
                        ? Text(
                            description ?? '',
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: rating != null
                  ? RatingWidget(
                      ratting: rating ?? 0,
                      backgroundColor: AppColors.lightGrey,
                      trailingWidget: AppAssets.starIconForRatingBlack,
                      fontColor: AppColors.black,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

class RecentSearchItemWidget extends StatelessWidget {
  const RecentSearchItemWidget({
    Key? key,
    required this.profileImage,
    required this.description,
    required this.title,
  }) : super(key: key);

  final Widget profileImage;
  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1, color: AppColors.lightGrey),
          ),
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 51,
                  width: 51,
                  child: profileImage,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: AppAssets.closeIconRoundedEmpty),
          ],
        ),
      ),
    );
  }
}

List<Widget> getCorrectRecommendedWidgets(TypesOfSearches selectedType) {
  switch (selectedType) {
    case TypesOfSearches.stuff:
      return allStuff;
    case TypesOfSearches.people:
      return allPeople;
    case TypesOfSearches.brands:
      return allBrands;
  }
}

List<Widget> getCorrectRecentSearchWidgets(TypesOfSearches selectedType) {
  switch (selectedType) {
    case TypesOfSearches.stuff:
      return allStuff;
    case TypesOfSearches.people:
      return allPeopleRecentWidgets;
    case TypesOfSearches.brands:
      return allBrands;
  }
}

var allStuff = [
  RecommendedSearchItemWidget(
    description: 'Valve',
    title: "Counter-Strike: Global Offensive",
    rating: 4.5,
    profileImage: AppAssets.counterStrikePhoto,
  ),
  RecommendedSearchItemWidget(
    description: 'Valve',
    title: "Counter-Strike: Global Offensive",
    rating: 4.5,
    profileImage: AppAssets.counterStrikePhoto,
  ),
  RecommendedSearchItemWidget(
    description: 'Mojang Studios',
    title: "Minecraft",
    rating: 4.4,
    profileImage: AppAssets.minecraftPhoto,
  ),
  RecommendedSearchItemWidget(
    description: 'Rockstar Games',
    title: "Grand Theft Auto V",
    rating: 4.4,
    profileImage: AppAssets.gtaFivePhoto,
  ),
];

var allStuffRecentWidgets = [
  RecentSearchItemWidget(
    description: 'Valve',
    title: "Counter-Strike: Global Offensive",
    profileImage: AppAssets.counterStrikePhoto,
  ),
  RecentSearchItemWidget(
    description: 'Valve',
    title: "Counter-Strike: Global Offensive",
    profileImage: AppAssets.counterStrikePhoto,
  ),
  RecentSearchItemWidget(
    description: 'Mojang Studios',
    title: "Minecraft",
    profileImage: AppAssets.minecraftPhoto,
  ),
  RecentSearchItemWidget(
    description: 'Rockstar Games',
    title: "Grand Theft Auto V",
    profileImage: AppAssets.gtaFivePhoto,
  ),
];

var allPeople = [
  RecommendedSearchItemWidget(
    description: '@JamesPeach',
    title: "James Peach",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecommendedSearchItemWidget(
    description: '@JamesAtkins',
    title: "James Atkins",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecommendedSearchItemWidget(
    description: '@MichaelOrenson',
    title: "Michael Orenson",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecommendedSearchItemWidget(
    description: '@AlexaZhang',
    title: "Alexa Zhang",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
];

var allPeopleRecentWidgets = [
  RecentSearchItemWidget(
    description: '@AlexaZhang',
    title: "Alexa Zhang",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecentSearchItemWidget(
    description: '@JamesAtkins',
    title: "James Atkins",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecentSearchItemWidget(
    description: '@MichaelOrenson',
    title: "Michael Orenson",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
  RecentSearchItemWidget(
    description: '@AlexaZhang',
    title: "Alexa Zhang",
    profileImage: AppAssets.jamesAtkinsProfilePhoto,
  ),
];

var allBrands = [
  RecommendedSearchItemWidget(
    title: "Activision",
    profileImage: AppAssets.activisionGamesPhoto,
  ),
  RecommendedSearchItemWidget(
    title: "Rockstar Games",
    profileImage: AppAssets.activisionGamesPhoto,
  ),
  RecommendedSearchItemWidget(
    title: "Active Games",
    profileImage: AppAssets.activisionGamesPhoto,
  ),
  RecommendedSearchItemWidget(
    title: "Mojang Studios",
    profileImage: AppAssets.activisionGamesPhoto,
  ),
];


