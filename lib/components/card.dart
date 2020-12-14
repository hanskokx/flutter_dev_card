import 'package:flutter/material.dart';
import 'package:flutter_dev_card/components/neopunk/neopunk.dart';
import 'package:google_fonts/google_fonts.dart';

class DevCard extends StatelessWidget {
  const DevCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeopunkContainer(
      child: Container(
        width: 350,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CardContent(),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  const CardContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Column(
              children: [
                NeoPunkAvatar(),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  "Hans Kokx",
                  style: GoogleFonts.firaCode(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text("Hi there! 👋🏻"),
            ),
          ],
        ),
        Wrap(
          children: [
            Text(
"""My name is Hans, and I'm a Flutter Developer from Ann Arbor, Michigan.\n
I've been writing Flutter apps since the coronavirus took over the world."""),
          ],
        )
      ],
    );
  }
}
