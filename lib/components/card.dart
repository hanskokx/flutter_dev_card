import 'package:flutter/material.dart';
import 'package:flutter_dev_card/components/neopunk/neopunk.dart';
import 'package:google_fonts/google_fonts.dart';

class DevCard extends StatelessWidget {
  final String face;
  const DevCard({Key key, this.face}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeopunkContainer(
      child: Container(
        width: 350,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CardContent(face: face),
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  final String face;

  const CardContent({
    Key key,
    this.face,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.face == "Front") {
      return FrontFace();
    } else {
      return BackFace();
    }
  }
}

class FrontFace extends StatelessWidget {
  const FrontFace({
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
                child: Column(
                  children: [
                    Text(
                      "Developer Profile",
                      style: GoogleFonts.firaCode(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Hans Kokx',
                      style: GoogleFonts.firaCode(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Wrap(children: [
            Text(
              "Hi there! My name is Hans, and I'm a Flutter Developer from Ann Arbor, Michigan.",
            ),
            Text(
                "\nI've been writing Flutter apps since COVID-19 came in like a wrecking ball and ruined all our fun at the beginning of 2020."),
          ]),
        ),
      ],
    );
  }
}

class BackFace extends StatelessWidget {
  const BackFace({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Wrap(children: [
            Text(
              "You found the back of the card.",
            ),
          ]),
        ),
      ],
    );
  }
}
