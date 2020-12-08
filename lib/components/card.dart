import 'package:flutter/material.dart';
import 'package:flutter_dev_card/components/neopunk/neopunk.dart';

class DevCard extends StatelessWidget {
  const DevCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeopunkContainer(
      child: SizedBox(
        width: 500,
        height: 700,
        child: Column(
          children: <Widget>[
            NeoPunkAvatar(),
          ],
        ),
      ),
    );
  }
}
