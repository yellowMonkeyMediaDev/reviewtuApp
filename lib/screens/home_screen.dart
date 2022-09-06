import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/constants/home_tab.dart';
import 'package:reviewtu_app/screens/posts_feed_screen.dart';
import 'package:reviewtu_app/screens/profile_screen.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  HomeTab selectedTab = HomeTab.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCorrectNavBarWidget(selectedTab),
      body: IndexedStack(
        index: selectedTab.index,
        children: const [
          PostsFeedScreen(),
          ProfileScreen(),
          ProfileScreen(),
          ProfileScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          labelColor: AppColors.grey,
          labelPadding: EdgeInsets.zero,
          controller: TabController(
            vsync: this,
            length: HomeTab.values.length,
            initialIndex: selectedTab.index,
          ),
          indicator: const BoxDecoration(
            border: Border(top: BorderSide(color: AppColors.black, width: 1.5)),
          ),
          tabs: HomeTab.values.map((tab) {
            final isSelected = tab == selectedTab;
            return Tab(
              iconMargin: const EdgeInsets.only(bottom: 6.0),
              icon: SizedBox(width: 28, height: 24, child: isSelected ? getTabActiveIcon(tab) : getTabIcon(tab)),
              text: getTabTitle(tab, context),
            );
          }).toList(),
          onTap: (index) {
            if (index != selectedTab.index) {
              setState(() {
                selectedTab = HomeTab.values[index];
              });
            }
          },
        ),
      ),
    );
  }

  ReviewtuNavigationBarWidget _getCorrectNavBarWidget(HomeTab selectedTab) {
    switch (selectedTab) {
      case HomeTab.home:
        return ReviewtuNavigationBarWidget(
          leadingWidget: AppAssets.reviewtuLogoBlack,
          automaticallyImplyLeading: false,
          trailingWidget: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppAssets.messagesIcon,
              const SizedBox(width: 14),
              AppAssets.plusIcon,
            ],
          ),
        );
      case HomeTab.search:
        return ReviewtuNavigationBarWidget(
          automaticallyImplyLeading: false,
          title: "Mike Jones",
          trailingWidget: AppAssets.settingsWhiteIcon,
        );
      case HomeTab.post:
        return ReviewtuNavigationBarWidget(
          automaticallyImplyLeading: false,
          title: "Mike Jones",
          trailingWidget: AppAssets.settingsWhiteIcon,
        );
      case HomeTab.notifications:
        return ReviewtuNavigationBarWidget(
          automaticallyImplyLeading: false,
          title: "Mike Jones",
          trailingWidget: AppAssets.settingsWhiteIcon,
        );
      case HomeTab.profile:
        return ReviewtuNavigationBarWidget(
          automaticallyImplyLeading: false,
          title: "Mike Jones",
          trailingWidget: AppAssets.settingsWhiteIcon,
        );
    }
  }
}
