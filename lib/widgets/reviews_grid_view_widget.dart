import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

class ReviewsGridViewWidget extends StatelessWidget {
  const ReviewsGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 127 / 170),
        itemBuilder: (context, index) {
          return ReviewContentWidget(
            title: "Grand Theft Auto",
            rating: 4.3,
            reviewThumbnail: AppAssets.sampleGTAPhoto,
          );
        });
  }
}

class ReviewContentWidget extends StatelessWidget {
  const ReviewContentWidget({
    Key? key,
    required this.reviewThumbnail,
    required this.title,
    required this.rating,
  }) : super(key: key);

  final Widget reviewThumbnail;
  final String title;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.8),
      child: Stack(
        fit: StackFit.expand,
        children: [
          reviewThumbnail,
          Positioned(
            bottom: 8.4,
            left: 8,
            child: Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: AppColors.white),
            ),
          ),
          Positioned(
            top: 10,
            left: 8,
            child: RatingWidget(
              ratting: rating,
            ),
          ),
        ],
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
    required this.ratting,
    this.trailingWidget,
  }) : super(key: key);

  final double ratting;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkerGrey,
        border: Border.all(
          color: AppColors.darkerGrey,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3),
        child: Row(
          children: [
            Text(
              ratting.toString(),
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white),
            ),
            trailingWidget ?? AppAssets.starIconForRating,
          ],
        ),
      ),
    );
  }
}