import 'package:flutter/material.dart';
import 'package:flutter_dev_card/settings.dart';

const kBorderWidth = 5.0;
const kAvatarSize = 200.0;

final kInnerDecoration = BoxDecoration(
  image: new DecorationImage(
    image: new NetworkImage(kAvatarUrl),
    fit: BoxFit.cover,
  ),
  borderRadius: BorderRadius.circular(kAvatarSize / 2),
);

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: kGradientColors,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  borderRadius: BorderRadius.circular(kAvatarSize / 2),
  boxShadow: boxShadowStyle,
);

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: kAvatarSize,
      height: kAvatarSize,
      child: Padding(
        padding: const EdgeInsets.all(kBorderWidth),
        child: new Container(
          decoration: kInnerDecoration,
        ),
      ),
      decoration: kGradientBoxDecoration,
    );
  }
}
