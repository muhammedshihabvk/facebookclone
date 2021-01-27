import 'package:facebookclone/Widgets/assets.dart';
import 'package:flutter/material.dart';

class SuggestionAddFriendCard extends StatelessWidget {

  String friendImage;
  String friendName;

  SuggestionAddFriendCard({this.friendImage,this.friendName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 220,
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  friendImage,
                  fit: BoxFit.cover,
                  height: 200,
                )),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                color: Colors.grey[300],
                width: 220,
                height: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // SizedBox(height: 4,),
                    Text(friendName,style: TextStyle(fontWeight: FontWeight.bold,)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton(
                            onPressed: () {
                              print("pressed on add friend");
                            },
                            color: Colors.blue,
                            height: 30,
                            minWidth: 30,
                            child: Text("Add Friend",style: TextStyle(color: Colors.white),)
                        ),
                        ButtonTheme(
                          minWidth: 30,
                          height: 30,
                          child: OutlineButton(

                            borderSide: BorderSide(color: Colors.grey[700]),
                              onPressed: () {
                                print("pressed on remove friend");
                              },
                              child: Text("Remove",style: TextStyle(color: Colors.grey),)
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
