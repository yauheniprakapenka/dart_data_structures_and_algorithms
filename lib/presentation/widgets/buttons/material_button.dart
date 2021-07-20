import 'package:flutter/material.dart';
import 'package:skillbox_http/presentation/core/constants/strings/buttons.dart';
import 'package:skillbox_http/presentation/core/style/app_color.dart';
import 'package:skillbox_http/presentation/core/style/app_size.dart';

class CustomMaterialButton extends StatelessWidget {
  final VoidCallback onPressed;

  CustomMaterialButton({
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.buttonSize,
      child: MaterialButton(
        child: Text(
          ButtonsStrings.more,
          style: TextStyle(
            color: AppColor.fontColorOnBackground,
            fontSize: 12,
          ),
        ),
        color: AppColor.mainColorPrimary,
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
