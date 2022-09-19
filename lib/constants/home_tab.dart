import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';

enum HomeTab {
  home,
  search,
  post,
  notifications,
  profile,
}

Widget getTabIcon(HomeTab tab) {
  switch (tab) {
    case HomeTab.home:
      return AppAssets.homeIconGrey;
    case HomeTab.search:
      return AppAssets.searchIconPng;
    case HomeTab.post:
      return AppAssets.postIconPng;
    case HomeTab.notifications:
      return AppAssets.bellIconGrey;
    case HomeTab.profile:
      return AppAssets.profileIconPng;
  }
}

Widget getTabActiveIcon(HomeTab tab) {
  switch (tab) {
    case HomeTab.home:
      return AppAssets.homeIconPng;
    case HomeTab.search:
      return AppAssets.searchBlackIcon;
    case HomeTab.post:
      return AppAssets.favoritesIconBlack;
    case HomeTab.notifications:
      return AppAssets.bellIconBlack;
    case HomeTab.profile:
      return AppAssets.profileIconPng;
  }
}

String getTabTitle(HomeTab tab, BuildContext context) {
  switch (tab) {
    case HomeTab.home:
      return "Home";
    case HomeTab.search:
      return "Search";
    case HomeTab.post:
      return "Post";
    case HomeTab.notifications:
      return "Notifications";
    case HomeTab.profile:
      return "Profile";
  }
}
