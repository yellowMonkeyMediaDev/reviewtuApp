import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewtu_app/main.dart';
import 'package:reviewtu_app/screens/about_this_user_screen.dart';
import 'package:reviewtu_app/screens/choose_platform_screen.dart';
import 'package:reviewtu_app/screens/choose_your_interests_screen.dart';
import 'package:reviewtu_app/screens/edit_profile_screen.dart';
import 'package:reviewtu_app/screens/followers_screen.dart';
import 'package:reviewtu_app/screens/forgot_your_password_screen.dart';
import 'package:reviewtu_app/screens/home_screen.dart';
import 'package:reviewtu_app/screens/login_screen.dart';
import 'package:reviewtu_app/screens/other_users_profile_screen.dart';
import 'package:reviewtu_app/screens/password_login_screen.dart';
import 'package:reviewtu_app/screens/profile_screen.dart';
import 'package:reviewtu_app/screens/registration_screen.dart';
import 'package:reviewtu_app/screens/settings/account_info.dart';
import 'package:reviewtu_app/screens/settings/account_screen.dart';
import 'package:reviewtu_app/screens/settings/help_screen.dart';
import 'package:reviewtu_app/screens/settings/interests_and_prefrences_screen.dart';
import 'package:reviewtu_app/screens/settings/notifications_screen.dart';
import 'package:reviewtu_app/screens/settings/privacy_screen.dart';
import 'package:reviewtu_app/screens/settings/security_screen.dart';
import 'package:reviewtu_app/screens/settings/settings_follow_and_invite_friends_screen.dart';
import 'package:reviewtu_app/screens/settings/settings_screen.dart';
import 'package:reviewtu_app/screens/settings/your_activity_screen.dart';
import 'package:reviewtu_app/screens/sign_in_saved_data_screen.dart';
import 'package:reviewtu_app/screens/sign_in_saved_data_login_settings_screen.dart';
import 'package:reviewtu_app/widgets/dialog_holder_widget.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (BuildContext context) => const MyHomePage(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        );
      case '/registration':
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegistrationScreen(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeScreen(),
        );
      case '/profile':
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProfileScreen(),
        );
      case '/otherUsersProfile':
        return MaterialPageRoute(
          builder: (BuildContext context) => const OtherUsersProfileScreen(),
        );
      case '/followers':
        return MaterialPageRoute(
          builder: (BuildContext context) => const FollowersScreen(),
        );
      case '/aboutThisUser':
        return MaterialPageRoute(
          builder: (BuildContext context) => const AboutThisUserScreen(),
        );
      case '/editProfile':
        return MaterialPageRoute(
          builder: (BuildContext context) => const EditProfileScreen(),
        );
      case '/signInSavedData':
        return MaterialPageRoute(
          builder: (BuildContext context) => const SignInSavedDataScreen(),
        );
      case '/signInSavedDataSettings':
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              const SignInSavedDataLoginSettingsScreen(),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (BuildContext context) => const SettingsScreen(),
        );
      case '/passwordLogin':
        return MaterialPageRoute(
          builder: (BuildContext context) => const PasswordLoginScreen(),
        );
      case '/forgotYourPassword':
        return CupertinoModalPopupRoute(
          barrierDismissible: true,
          builder: (context) => DialogHolderWidget(
              route: ForgotYourPasswordScreen.route,
              builder: const ForgotYourPasswordScreen(),
              onDismissed: (_) {
                Navigator.of(context).pop();
              }),
        );
      case '/chooseYourInterests':
        return CupertinoModalPopupRoute(
          barrierDismissible: true,
          builder: (context) => DialogHolderWidget(
              route: ForgotYourPasswordScreen.route,
              builder: const ChooseYourInterestsScreen(),
              onDismissed: (_) {
                Navigator.of(context).pop();
              }),
        );
      case '/followAndInviteFriends':
        return MaterialPageRoute(
          builder: (BuildContext context) => const SettingsScreenFollowAndInvite(),
        );
      case '/yourActivity':
        return MaterialPageRoute(
          builder: (BuildContext context) => const YourActiviryScreen(),
        );
      case '/notifications':
        return MaterialPageRoute(
          builder: (BuildContext context) => const NotificationsScreen(),
        );
      case '/privacy':
        return MaterialPageRoute(
          builder: (BuildContext context) => const PrivacyScreen(),
        );
      case '/security':
        return MaterialPageRoute(
          builder: (BuildContext context) => const SecurityScreen(),
        );

      case '/account':
        return MaterialPageRoute(
          builder: (BuildContext context) => const AccountScreen(),
        );
      case '/help':
        return MaterialPageRoute(
          builder: (BuildContext context) => const HelpScreen(),
        );
      case '/accountInfo':
        return MaterialPageRoute(
          builder: (BuildContext context) => const AccountInfoScreen(),
        );
      case '/interestsAndPrefrences':
        return MaterialPageRoute(
          builder: (BuildContext context) => const InterestsAndPrefrencesScreen(),
        );




      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ChoosePlatformScreen(),
        );
    }
  }
}
