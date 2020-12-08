import 'package:flutter/material.dart';
import 'package:flutter_dev_card/settings.dart';

final kNeoPunkGradient = new LinearGradient(
  colors: kGradientColors,
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: kNeoPunkGradient,
  boxShadow: kBoxShadowStyle,
);