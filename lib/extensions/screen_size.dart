import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get wisthScreen => MediaQuery.of(this).size.width;
  double get heightScreen => MediaQuery.of(this).size.height;
}
