import 'package:flutter/material.dart';
import 'constants.dart';

class TopTwoCards extends StatelessWidget {
  TopTwoCards(this.sexIcon, this.sexText);
  final sexText;
  final sexIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          sexIcon,
          size: MediaQuery.of(context).size.height * 0.10,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          sexText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
