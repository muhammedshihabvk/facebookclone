import 'package:facebookclone/Widgets/AvatarClipRRect.dart';
import 'package:flutter/material.dart';
import 'package:facebookclone/Widgets/assets.dart';

class RoomSection extends StatelessWidget {

  Widget createRoomButton = OutlineButton.icon(
    shape: StadiumBorder(),
    onPressed: () {
      print("clicked on create room");
    },
    icon: Icon(Icons.video_call,color: Colors.deepPurpleAccent,),
    label: Text("Create\nRoom",style: TextStyle(color: Colors.blue,),),
    borderSide: BorderSide(
      color: Colors.blue,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      // color: Colors.lightGreen,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5),
        children: [
          createRoomButton,
          VerticalDivider(color: Colors.white,width: 20,),
          AvatarClipRRect(sizeValue: 50,imageLocation: mammootty,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: NazriyaNazim,statusColor: Colors.grey,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: fahadfasil,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: mohanlal,statusColor: Colors.deepOrangeAccent,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: mammootty,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: fahadfasil,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: NazriyaNazim,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: mammootty,statusColor: Colors.deepOrange,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: mohanlal,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: NazriyaNazim,statusColor: Colors.green,statusFlag: true,),
          AvatarClipRRect(sizeValue: 50,imageLocation: fahadfasil,statusColor: Colors.green,statusFlag: true,),
        ],
      ),
    );
  }
}
