import 'package:flutter/material.dart';
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
          'Подробнее',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        color: Colors.blue[400],
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
