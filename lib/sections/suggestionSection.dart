import 'package:facebookclone/Widgets/assets.dart';
import 'package:facebookclone/Widgets/suggestionAddFriendCard.dart';
import 'package:facebookclone/home.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5,right: 5),
      height: 325,
      // color: Colors.blue,
      child: Column(
        children: [
          ListTile(
            // tileColor: Colors.grey,
            title: Text("People You May Know",style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: IconButton(icon: Icon(Icons.more_horiz_rounded),color: Colors.grey[700],iconSize: 30,),
          ),
          Container(
            height: 250,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionAddFriendCard(friendImage: mohanlal,friendName: "Mohanlal",),
                SuggestionAddFriendCard(friendImage: fahadfasil,friendName: "Fahad Fasil",),
                SuggestionAddFriendCard(friendImage: mammootty,friendName: "Mammootty",),
                SuggestionAddFriendCard(friendImage: NazriyaNazim,friendName: "Nazria nazin",)
              ],
            ),
          ),
          greyDivider(thiknessVal: 8),
        ],
      ),
    );
  }
}
