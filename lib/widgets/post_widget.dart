import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_assets.dart';
import 'package:reviewtu_app/constants/app_colors.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PostUserInfoWidget(),
        PostContentWidget(),
        ReactToPostWidget(),
        LikesAndDescriptionWidget(),
        SizedBox(height: 10),
      ],
    );
  }
}

class ReactToPostWidget extends StatelessWidget {
  const ReactToPostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: AppAssets.heartIcon,
              ),
              const SizedBox(width: 8),
              AppAssets.commentsIcon,
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: AppAssets.sendInChatIcon,
          ),
        ],
      ),
    );
  }
}

class PostUserInfoWidget extends StatelessWidget {
  const PostUserInfoWidget({
    Key? key,
  }) : super(key: key);

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
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                    width: 35,
                    height: 35,
                    child: AppAssets.postProfilePicturePng),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Mike Jones',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 13),
                      ),
                      const SizedBox(width: 5),
                      AppAssets.verifiedProfileIcon,
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "Grand Theft Auto 6",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 11),
                      ),
                      Text(
                        ' by ',
                        style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 11),
                      ),
                      Text(
                        "@Rockstar",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 11),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: AppAssets.threeDotsIcon,
          ),
        ],
      ),
    );
  }
}

class LikesAndDescriptionWidget extends StatelessWidget {
  const LikesAndDescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
            child: Row(
              children: [
                SizedBox(
                  height: 18,
                  width: 18,
                  child: AppAssets.postProfilePicturePng,
                ),
                const SizedBox(width: 5),
                const Text(
                  'Liked by ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                const Text(
                  "craig_love",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
                const Text(
                  ' and ',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
                ),
                const Text(
                  "44,686 others",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ],
            ),
          ),
          const Text(
            'I thought the iphone 13 was a great upgrade from the iphone X, The camera quality is amazing, next level!..',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
          ),
          const Text(
            'Read More',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
          ),
          const PostDateAndTimeWidget(),
        ],
      ),
    );
  }
}

class PostContentWidget extends StatelessWidget {
  const PostContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: AppAssets.sampleGTAPhoto);
  }
}

class PostDateAndTimeWidget extends StatelessWidget {
  const PostDateAndTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'September 19',
      style: TextStyle(fontWeight: FontWeight.w400, fontSize: 11),
    );
  }
}
