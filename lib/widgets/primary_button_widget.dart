import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  const PrimaryButtonWidget(
      {Key? key,
      this.callback,
      required this.backgroundColor,
      required this.textColor,
      required this.buttonText,
      required this.buttonHeight,
      this.borderColor})
      : super(key: key);

  final Function()? callback;
  final Color backgroundColor;
  final Color textColor;
  final String buttonText;
  final double buttonHeight;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonHeight,
      child: TextButton(
        onPressed: callback ?? () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6), side: BorderSide(color: borderColor ?? backgroundColor)),
          ),
        ),
        child: Row(
          children: [
            const Spacer(),
            Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.w500, color: textColor),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
