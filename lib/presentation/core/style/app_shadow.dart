import 'package:flutter/material.dart';

class AppShadow {
  static final shadow = <BoxShadow>[
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      offset: Offset(0, 2),
      blurRadius: 7,
    ),
  ];
}
