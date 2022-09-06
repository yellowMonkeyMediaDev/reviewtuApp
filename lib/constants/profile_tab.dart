import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';

enum ProfileTab {
  reviews,
  pictures,
  saved,
  pinned,
}

Widget getTabIcon(ProfileTab tab) {
  switch (tab) {
    case ProfileTab.reviews:
      return AppAssets.starIcon;
    case ProfileTab.pictures:
      return AppAssets.picturesIconPng;
    case ProfileTab.saved:
      return AppAssets.savedIconPng;
    case ProfileTab.pinned:
      return AppAssets.pinnedIconPng;
  }
}

Widget getTabActiveIcon(ProfileTab tab) {
  switch (tab) {
    case ProfileTab.reviews:
      return AppAssets.starIconBlackPng;
    case ProfileTab.pictures:
      return AppAssets.picturesIconPng;
    case ProfileTab.saved:
      return AppAssets.savedIconPng;
    case ProfileTab.pinned:
      return AppAssets.pinnedIconPng;
  }
}
