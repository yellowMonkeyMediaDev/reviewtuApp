import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAssets {
  static final Widget reviewtuLogoWhite = SvgPicture.asset(
    'assets/reviewtu_logo.svg',
    semanticsLabel: 'Reviewtu logo white',
  );

  static final Widget reviewtuLogoBlack = SvgPicture.asset(
    'assets/reviewtu_logo_black.svg',
    semanticsLabel: 'Reviewtu logo black',
  );

  static final Widget userIcon = SvgPicture.asset(
    'assets/user_icon.svg',
    semanticsLabel: 'User icon',
  );

  static final Widget tiktokIcon = SvgPicture.asset(
    'assets/tiktok_icon.svg',
    semanticsLabel: 'Tiktok icon',
  );

  static final Widget instagramIcon = SvgPicture.asset(
    'assets/instagram_icon.svg',
    semanticsLabel: 'Instagram icon',
  );

  static final Widget facebookIcon = SvgPicture.asset(
    'assets/facebook_icon.svg',
    semanticsLabel: 'Facebook icon',
  );

  static final Widget twitterIcon = SvgPicture.asset(
    'assets/twitter_icon.svg',
    semanticsLabel: 'Twitter icon',
  );

  static final Widget checkedIcon = SvgPicture.asset(
    'assets/checked_icon.svg',
    semanticsLabel: 'Checked icon',
    height: 18,
    width: 18,
  );

  static final Widget settingsIconPng = Image.asset('assets/settings_icon.png');

  static final Widget profilepicture = Image.asset('assets/profile_picture.png');

  static final Widget tiktokIconPng = Image.asset('assets/tiktok_logo.png');

  static final Widget instagramIconPng = Image.asset('assets/instagram_logo.png');

  static final Widget facebookIconPng = Image.asset('assets/facebook_logo.png');

  static final Widget twitterIconPng = Image.asset('assets/twitter_logo.png');
}
