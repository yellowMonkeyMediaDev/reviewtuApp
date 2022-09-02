import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/constants/home_tab.dart';
import 'package:reviewtu_app/widgets/app_navigation_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReviewtuNavigationBarWidget(
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
      ),
      body: Column(
        children: const [
          FilterLatestReviewsWidget(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          controller: TabController(
            vsync: this,
            length: HomeTab.values.length,
            initialIndex: 0,
          ),
          tabs: HomeTab.values.map((tab) {
            return Tab(
              iconMargin: const EdgeInsets.only(bottom: 6.0),
              icon: getTabIcon(tab),
              text: getTabTitle(tab, context),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class FilterLatestReviewsWidget extends StatelessWidget {
  const FilterLatestReviewsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
            width: 1,
          ),
        ),
      ),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Latest Reviews!',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: AppAssets.filterButton,
          ),
        ],
      ),
    );
  }
}
