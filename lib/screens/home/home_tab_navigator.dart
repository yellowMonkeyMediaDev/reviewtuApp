import 'package:flutter/material.dart';
import 'package:reviewtu_app/screens/login&Registration/choose_platform_screen.dart';
import 'package:reviewtu_app/screens/login&Registration/login_screen.dart';
import 'package:reviewtu_app/screens/profile/other_users_profile_screen.dart';
import 'package:reviewtu_app/screens/home/posts_feed_screen.dart';

class HomeTabRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (BuildContext context) => const PostsFeedScreen(),
        );
      case '/othersUsersProfile':
        return MaterialPageRoute(
          builder: (BuildContext context) => const OtherUsersProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
    }
  }
}

class HomeTabNavigator extends StatelessWidget {
  const HomeTabNavigator({
    Key? key,
   required this.navigatorKey,
  }) : super(key: key);

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: HomeTabRouter.onGenerateRoute,
    );
  }
}


