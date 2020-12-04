import 'package:flutter/material.dart';

final kGradientColors = [
  const Color(0xFFBB9ADA),
  const Color(0xFFA5DCEC),
];
const kBorderWidth = 5.0;
const kAvatarSize = 200.0;

final kInnerDecoration = BoxDecoration(
  image: new DecorationImage(
    image: new NetworkImage('https://avatars3.githubusercontent.com/u/1911919'),
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
  boxShadow: [
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
  ],
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
