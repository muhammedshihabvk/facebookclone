import 'package:facebookclone/Widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:facebookclone/Widgets/assets.dart';

class ReelStorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      height: 170,
      // padding: EdgeInsets.only(left: 4),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(imageLocation: asifali,createStoryIconFlag: true,),
          StoryCard(imageLocation: vellariprakv,createStoryIconFlag: false,avatar: mohanlal,labelText: "Mohanlal",displayBorderStatus: true,),
          StoryCard(imageLocation: Forensic,createStoryIconFlag: false,avatar: asifali,labelText: "Asif ali",displayBorderStatus: true,),
          StoryCard(imageLocation: secondsfilm,createStoryIconFlag: false,avatar: mohanlal,labelText: "Mohanlal",displayBorderStatus: true,),
          StoryCard(imageLocation: fahadfasil,createStoryIconFlag: false,avatar: mammootty,labelText: "Mammootty",displayBorderStatus: true,),
          StoryCard(imageLocation: fahadWedding,createStoryIconFlag: false,avatar: fahadfasil,labelText: "Fahad Fasil",displayBorderStatus: true,),
          // StoryCard(imageLocation: fahadfasil,),
          // StoryCard(imageLocation: mohanlal,),
          // StoryCard(imageLocation: NazriyaNazim,),
          // StoryCard(imageLocation: fahadWedding,),
        ],
      )
    );
  }
}
