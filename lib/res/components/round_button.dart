import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/res/colors/app_color.dart';
import 'package:get/get.dart';


class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color textColor, buttonColor;
  final double height, width;
  final bool loading;
  final String title;

  const RoundButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.buttonColor = AppColor.primaryColor,
    this.textColor = AppColor.whiteColor,
    this.loading = false,
    this.height = 45,
    this.width = 140,
  }):super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width, // Adjust the width as needed
        height: height, // Adjust the height as needed
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
            color: buttonColor,// Button color
        ),
        child: Center(
            child: loading?const CircularProgressIndicator(color: AppColor.greenColor,)
                :Text(title.tr, style: Theme.of(context).textTheme.titleLarge?.copyWith( color: textColor),
            )
        ),
      ),
    );
  }
}
