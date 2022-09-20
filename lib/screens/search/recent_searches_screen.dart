import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/screens/search/search_screen.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class RecentSearchesScreen extends StatefulWidget {
  const RecentSearchesScreen({Key? key}) : super(key: key);

  @override
  State<RecentSearchesScreen> createState() => _RecentSearchesScreenState();
}

class _RecentSearchesScreenState extends State<RecentSearchesScreen> {
  var recentSearches = [
    ...allPeopleRecentWidgets,
    ...allStuffRecentWidgets,
  ];

  @override
  void initState() {
    recentSearches.shuffle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
        title: "Recent Searches",
        automaticallyImplyLeading: false,
        leadingWidget: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              AppAssets.leftArrowBlue,
              const SizedBox(
                width: 9.5,
              ),
              const Text(
                "Search",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: AppColors.skyBlue,
                ),
              ),
            ],
          ),
        ),
        trailingWidget: GestureDetector(
          onTap: (){
            setState((){
              recentSearches.clear();
            });
          },
          child: const Text(
            "Clear all",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: AppColors.skyBlue,
            ),
          ),
        ),
      ),
      body: recentSearches.isNotEmpty
          ? SingleChildScrollView(
              child: Column(
                children: [...recentSearches],
              ),
            )
          : const NoRecentSearchesWidget(),
    );
  }
}

class NoRecentSearchesWidget extends StatelessWidget {
  const NoRecentSearchesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        height: 70,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.lightGrey, width: 1),
          ),
        ),
        child: const Text(
          "No recent Searches",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
