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
        // gradient: kNeoPunkGradient,
        color: Colors.transparent,
        borderRadius: borderRadius,
        // boxShadow: kBoxShadowStyle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius / 2,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: borderRadius,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                  child: Container(
                    height: 550, width: 400,
                    ),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
