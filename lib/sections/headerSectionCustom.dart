import 'package:flutter/material.dart';

class HeaderSectionCustom extends StatelessWidget {
  String buttonOneText;
  String buttonTwoText;
  String buttonThreeText;

  IconData iconDataOne;
  IconData iconDataTwo;
  IconData iconDataThree;

  Color iconOneColor;
  Color iconTwoColor;
  Color iconThreeColor;

  HeaderSectionCustom(
      {this.buttonOneText,
      this.iconDataOne,
      this.iconOneColor,
      this.buttonTwoText,
      this.iconDataTwo,
      this.iconTwoColor,
      this.buttonThreeText,
      this.iconDataThree,
      this.iconThreeColor});

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[400],
    );

    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          headerButton(
              buttonText: buttonOneText,
              buttonColor: iconOneColor,
              buttonIcon: iconDataOne,
              buttonAction: () {
                print("Clicked on $buttonOneText button");
              }),
          verticalDivider,
          headerButton(
              buttonText: buttonTwoText,
              buttonColor: iconTwoColor,
              buttonIcon: iconDataTwo,
              buttonAction: () {
                print("Clicked on $buttonTwoText");
              }),
          verticalDivider,
          headerButton(
              buttonText: buttonThreeText,
              buttonColor: iconThreeColor,
              buttonIcon: iconDataThree,
              buttonAction: () {
                print("Clicked on $buttonThreeText");
              }),
        ],
      ),
    );
  }

  Widget headerButton(
      {IconData buttonIcon,
      void Function() buttonAction,
      String buttonText,
      Color buttonColor}) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }
}
