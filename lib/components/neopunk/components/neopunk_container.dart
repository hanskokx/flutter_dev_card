import 'package:flutter/material.dart';
import 'package:flutter_dev_card/settings.dart';

class NeopunkContainer extends StatelessWidget {
  final Widget child;

  const NeopunkContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: kBoxShadowStyle,
      ),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            gradient: kNeoPunkGradient,
            borderRadius: borderRadius,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius/2,
                color: Colors.white,
              ),
              child: child,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: kNeoPunkGradient,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
