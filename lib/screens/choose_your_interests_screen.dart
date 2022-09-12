import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class ChooseYourInterestsScreen extends StatefulWidget {
  const ChooseYourInterestsScreen({Key? key}) : super(key: key);

  @override
  State<ChooseYourInterestsScreen> createState() =>
      _ChooseYourInterestsScreenState();
}

class _ChooseYourInterestsScreenState extends State<ChooseYourInterestsScreen> {
  bool firstPage = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 7,
              ),
              Center(child: AppAssets.lineBlackIcon),
              const SizedBox(
                height: 30,
              ),
              firstPage
                  ? const SizedBox()
                  : SizedBox(
                      height: 50,
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (!firstPage) {
                                    firstPage = true;
                                  }
                                });
                              },
                              child: AppAssets.leftArrowBlackIcon),
                        ],
                      ),
                    ),
              firstPage ? const FirstPageWidgets() : const SecondPageWidgets(),
              const Spacer(),
              firstPage
                  ? Center(child: AppAssets.firstPageIndicator)
                  : Center(child: AppAssets.secondPageIndicator),
              const SizedBox(
                height: 13,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 40.0, right: 40, bottom: 33),
                child: PrimaryButtonWidget(
                  backgroundColor: AppColors.black,
                  textColor: AppColors.white,
                  buttonText: "Next",
                  buttonHeight: 50,
                  callback: () {
                    setState(() {
                      if (firstPage) {
                        firstPage = false;
                      }
                    });
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

class CategoryOfInterest extends StatelessWidget {
  const CategoryOfInterest({
    Key? key,
    required this.label,
    required this.photo,
  }) : super(key: key);

  final String label;
  final Widget photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                label,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)),
            child: photo,
          ),
        ],
      ),
    );
  }
}

class FirstPageWidgets extends StatelessWidget {
  const FirstPageWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "👋🏼 Let us know\nyour interests!",
          style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 14,
        ),
        const Text(
          "We can then provide you with the most relevant\ncontent. ",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 28,
        ),
        CategoryOfInterest(
          label: "Video Games",
          photo: AppAssets.videoGamesPhoto,
        ),
        const SizedBox(
          height: 14,
        ),
        CategoryOfInterest(
          label: "Music",
          photo: AppAssets.musicPhoto,
        ),
        const SizedBox(
          height: 14,
        ),
        CategoryOfInterest(
          label: "Film/TV",
          photo: AppAssets.filmTvPhoto,
        ),
      ],
    );
  }
}

class SecondPageWidgets extends StatelessWidget {
  const SecondPageWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Great! So what type of Games\nand Music do you like?",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
        ),
        const SizedBox(
          height: 20,
        ),
        Wrap(
          runSpacing: 10,
          spacing: 12,
          children: const [
            TypesOfCategoriesWidget(
              text: "🎯 FPS Games",
            ),
            TypesOfCategoriesWidget(
              text: "💻 PC Gaming",
            ),
            TypesOfCategoriesWidget(
              text: "🏎 Racing",
            ),
            TypesOfCategoriesWidget(
              text: "🏅 Sports",
            ),
            TypesOfCategoriesWidget(
              text: "⏳ Real-time strategy",
            ),
            TypesOfCategoriesWidget(
              text: "💻 Role-playing",
            ),
            TypesOfCategoriesWidget(
              text: "🏅 Sandbox",
            ),
            TypesOfCategoriesWidget(
              text: "🎮 Multiplayer online battle arena (MOBA)",
            ),
            TypesOfCategoriesWidget(
              text: "🤔 Puzzles",
            ),
            TypesOfCategoriesWidget(
              text: "🛣 Action-adventure",
            ),
            TypesOfCategoriesWidget(
              text: "🎚 Platformer",
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Wrap(
          runSpacing: 10,
          spacing: 12,
          children: const [
            TypesOfCategoriesWidget(
              text: "🎯 HipHop",
            ),
            TypesOfCategoriesWidget(
              text: "💻 Rock",
            ),
            TypesOfCategoriesWidget(
              text: "🏎 Rap",
            ),
            TypesOfCategoriesWidget(
              text: "🏅 Pop",
            ),
            TypesOfCategoriesWidget(
              text: "⏳ R&B",
            ),
            TypesOfCategoriesWidget(
              text: "🏅 Heavy Metal",
            ),
            TypesOfCategoriesWidget(
              text: "💻 Electronic",
            ),
            TypesOfCategoriesWidget(
              text: "💻 Jazz",
            ),
            TypesOfCategoriesWidget(
              text: "💻 Reggae",
            ),
          ],
        )
      ],
    );
  }
}

class TypesOfCategoriesWidget extends StatelessWidget {
  const TypesOfCategoriesWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.black,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
        child: Text(
          text,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
