import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final double diameter;
  final void Function() buttonAction;
  Color iconColor;

  AppBarButton({
    @required this.buttonIcon,
    @required this.diameter,
    @required this.buttonAction,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: diameter,
      width: diameter,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
