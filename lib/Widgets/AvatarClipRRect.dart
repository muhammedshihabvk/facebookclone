import 'package:flutter/material.dart';

class AvatarClipRRect extends StatelessWidget {
  String imageLocation;
  double sizeValue;
  Color statusColor;
  bool statusFlag;
  bool borderFlag;

  AvatarClipRRect(
      {this.imageLocation,
      this.sizeValue,
      this.statusColor,
      this.statusFlag,
      this.borderFlag});

  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;
    if (statusFlag == true) {
      statusIndicator = Positioned(
        right: 1,
        bottom: -2,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              color: statusColor,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )),
        ),
      );
    } else {
      statusIndicator = SizedBox();
    }

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: borderFlag == true
                ? Border.all(color: Colors.blue, width: 2)
                : null),
        // padding: EdgeInsets.only(right: 5,),
        child: ClipRRect(
          child: Image.asset(
            imageLocation,
            width: sizeValue,
            height: sizeValue,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      statusIndicator,
    ]);
  }
}
