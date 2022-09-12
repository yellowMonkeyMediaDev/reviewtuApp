import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class FilterReviewsPopup extends StatelessWidget {
  const FilterReviewsPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.darkGrey,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: AppColors.white,
          ),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              Center(child: AppAssets.smallerLineIcon),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "Filters",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: AppAssets.closeIconRoundedGrey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "People",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              const FilteringOptionWidget(
                label: "All",
                selected: true,
              ),
              const FilteringOptionWidget(
                label: "Following",
                selected: false,
              ),
              const FilteringOptionWidget(
                label: "Followers",
                selected: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              const FilteringOptionWidget(
                label: "All",
                selected: true,
              ),
              const FilteringOptionWidget(
                label: "Favorites",
                selected: false,
              ),
              const FilteringOptionWidget(
                label: "Trending",
                selected: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: PrimaryButtonWidget(
                  backgroundColor: AppColors.skyBlue,
                  textColor: AppColors.white,
                  buttonText: "See Reviews",
                  buttonHeight: 52,
                  callback: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilteringOptionWidget extends StatelessWidget {
  const FilteringOptionWidget({
    Key? key,
    required this.label,
    required this.selected,
  }) : super(key: key);

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.lightGrey,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
              selected ? AppAssets.checkedIconBlue : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
