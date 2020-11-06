import 'package:flutter/material.dart';
import 'constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interprtation});
  final String bmiResult;
  final String resultText;
  final String interprtation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Your Result',
              style: kResultText,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: kCardColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Text(
                      resultText.toUpperCase(),
                      style: kGreenWeightText,
                    ),
                  ),
                  Container(
                    child: Text(
                      bmiResult,
                      style: kFontBottomCards,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(7),
                    child: Text(
                      interprtation,
                      textAlign: TextAlign.center,
                      style: kWeightMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) {
                  return InputPage();
                }),
              );
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kLargeButtonTextStyle,
                ),
              ),
              padding: EdgeInsets.only(bottom: 10),
              color: kBottomBarColor,
              margin: EdgeInsets.only(
                top: 10,
              ),
              height: MediaQuery.of(context).size.height * 0.09,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
