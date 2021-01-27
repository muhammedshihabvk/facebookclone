import 'package:facebookclone/Widgets/appBarButton.dart';
import 'package:facebookclone/Widgets/AvatarClipRRect.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  String imageLocation;
  String labelText;
  bool createStoryIconFlag;
  String avatar;
  bool displayBorderStatus;

  StoryCard(
      {this.imageLocation,
      this.labelText,
      this.createStoryIconFlag = false,
      this.avatar,
      this.displayBorderStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      margin: EdgeInsets.only(top: 5, bottom: 5, left: 10),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 5,
            child: createStoryIconFlag
                ? AppBarButton(
                    iconColor: Colors.blue,
                    buttonIcon: Icons.add,
                    diameter: 40,
                    buttonAction: () {
                      print("clicked add story button");
                    },
                  )
                : AvatarClipRRect(
                    imageLocation: avatar,
                    statusFlag: false,
                    sizeValue: 40,
                    borderFlag: displayBorderStatus,
                  ),
          ),
          Positioned(
              bottom: 5,
              left: 10,
              child: Text(
                labelText != null ? labelText : "",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageLocation),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }
}
