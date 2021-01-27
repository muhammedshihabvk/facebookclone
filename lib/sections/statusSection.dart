import 'package:flutter/material.dart';
import 'package:facebookclone/Widgets/assets.dart';
import 'package:facebookclone/Widgets/AvatarClipRRect.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AvatarClipRRect(imageLocation: asifali,sizeValue: 48,statusColor: Colors.green,statusFlag: false,),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none
        ),
      ),
    );
  }
}
