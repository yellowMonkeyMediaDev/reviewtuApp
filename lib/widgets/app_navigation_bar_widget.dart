import 'package:flutter/cupertino.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

CupertinoNavigationBar navBar = const CupertinoNavigationBar();

class ReviewtuNavigationBarWidget extends StatelessWidget
    with ObstructingPreferredSizeWidget {
  const ReviewtuNavigationBarWidget(
      {Key? key,
      this.backgroundColor,
      this.leadingWidget,
      this.title,
      this.trailingWidget,
      this.border,
      required this.automaticallyImplyLeading})
      : super(key: key);

  final Color? backgroundColor;
  final Widget? leadingWidget;
  final String? title;
  final Widget? trailingWidget;
  final Border? border;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    navBar = CupertinoNavigationBar(
      backgroundColor: backgroundColor ?? AppColors.white,
      leading: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20.0, vertical: 10),
        child: leadingWidget,
      ),
      middle: title == null
          ? const SizedBox()
          : NavBarTextWidget(title: title ?? ''),
      trailing: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
        child: trailingWidget,
      ),
      padding: EdgeInsetsDirectional.zero,
      automaticallyImplyLeading: automaticallyImplyLeading,
    );
    return navBar;
  }

  @override
  Size get preferredSize => navBar.preferredSize;

  @override
  bool shouldFullyObstruct(BuildContext context) =>
      navBar.shouldFullyObstruct(context);
}

class NavBarTextWidget extends StatelessWidget {
  const NavBarTextWidget({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: AppColors.black, fontWeight: FontWeight.w600, fontSize: 17),
      textScaleFactor: 1.0,
      textAlign: TextAlign.center,
    );
  }
}
