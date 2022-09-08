import 'package:flutter/cupertino.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

CupertinoNavigationBar navBar = const CupertinoNavigationBar();

class ReviewtuNavigationBarWidget extends StatelessWidget
    with ObstructingPreferredSizeWidget {
  const ReviewtuNavigationBarWidget({
    Key? key,
    this.backgroundColor,
    this.leadingWidget,
    this.title,
    this.trailingWidget,
    this.border,
    required this.automaticallyImplyLeading,
    this.titleTextColor,
    this.leadingWidgetCallback,
  }) : super(key: key);

  final Color? backgroundColor;
  final Widget? leadingWidget;
  final String? title;
  final Widget? trailingWidget;
  final Border? border;
  final bool automaticallyImplyLeading;
  final Color? titleTextColor;
  final Function()? leadingWidgetCallback;

  @override
  Widget build(BuildContext context) {
    navBar = CupertinoNavigationBar(
      backgroundColor: backgroundColor ?? AppColors.white,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: GestureDetector(onTap: leadingWidgetCallback ?? (){}, child: leadingWidget),
      ),
      middle: title == null
          ? const SizedBox()
          : NavBarTextWidget(
              title: title ?? '',
              titleTextColor: titleTextColor,
            ),
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
  const NavBarTextWidget({Key? key, required this.title, this.titleTextColor})
      : super(key: key);

  final String title;
  final Color? titleTextColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: titleTextColor ?? AppColors.black,
          fontWeight: FontWeight.w600,
          fontSize: 17),
      textScaleFactor: 1.0,
      textAlign: TextAlign.center,
    );
  }
}
