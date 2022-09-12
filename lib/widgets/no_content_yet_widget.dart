import 'package:flutter/material.dart';
import 'package:reviewtu_app/constants/app_colors.dart';
import 'package:reviewtu_app/widgets/primary_button_widget.dart';

class NoContentYetWidget extends StatelessWidget {
  const NoContentYetWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.buttonText,
      this.callback})
      : super(key: key);

  final String title;
  final String description;
  final String buttonText;
  final Function()? callback;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 11,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100.0),
          child: PrimaryButtonWidget(
            backgroundColor: AppColors.skyBlue,
            textColor: AppColors.white,
            buttonText: buttonText,
            buttonHeight: 30,
            callback: callback ?? () {},
          ),
        ),
      ],
    );
  }
}
