import 'package:flutter/material.dart';
import 'package:flutter_dev_card/settings.dart';
import 'package:flutter_dev_card/settings/gradient.dart';

final kAvatarUrl = 'https://avatars3.githubusercontent.com/u/1911919';

const kBorderWidth = 5.0;
const kAvatarSize = 150.0;

final kAvatarInnerDecoration = BoxDecoration(
  image: new DecorationImage(
    image: new NetworkImage(kAvatarUrl),
    fit: BoxFit.cover,
  ),
  borderRadius: BorderRadius.circular(kAvatarSize / 2),
);

final kAvatarGradientCircleDecoration = BoxDecoration(
  gradient: kNeoPunkGradient,
  borderRadius: BorderRadius.circular(kAvatarSize / 2),
  boxShadow: kBoxShadowStyle,
);

class NeoPunkAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: kAvatarSize,
      height: kAvatarSize,
      child: Padding(
        padding: const EdgeInsets.all(kBorderWidth),
        child: new Container(
          decoration: kAvatarInnerDecoration,
        ),
      ),
      decoration: kAvatarGradientCircleDecoration,
    );
  }
}
