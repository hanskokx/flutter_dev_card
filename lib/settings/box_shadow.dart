import 'package:flutter/material.dart';
import 'package:flutter_dev_card/settings/colors.dart';

final List<BoxShadow> kBoxShadowStyle = [
  BoxShadow(
    color: kGradientColors[0].withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 7,
    offset: Offset(-2, -2),
  ),
  BoxShadow(
    color: kGradientColors[1].withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 7,
    offset: Offset(2, 2),
  ),
];
