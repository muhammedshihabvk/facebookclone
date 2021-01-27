import 'package:facebookclone/Widgets/AvatarClipRRect.dart';
import 'package:facebookclone/Widgets/assets.dart';
import 'package:facebookclone/home.dart';
import 'package:facebookclone/sections/headerSectionCustom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String avatarImage;
  String postOwnerName;
  String publishedTime;
  bool blueTickStatus;
  String postText;
  String postImage;
  String likeCount;
  String commentCount;
  String shareCount;

  PostCard({this.avatarImage, this.postOwnerName, this.blueTickStatus,this.publishedTime,this.postText,this.postImage,this.likeCount,this.commentCount,this.shareCount});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          postCardHeader(),
          titleSection(),
          postImageSection(),
          footerSection(),
          Divider(thickness: 1,),
          HeaderSectionCustom(
            buttonOneText: "Like",
            iconDataOne: Icons.thumb_up,
            iconOneColor: Colors.grey[400],
            buttonTwoText: "Comment",
            iconDataTwo: Icons.chat,
            iconTwoColor: Colors.grey[400],
            buttonThreeText: "Share",
            iconDataThree: Icons.share,
            iconThreeColor: Colors.grey[400],
          ),
          greyDivider(thiknessVal: 8),
          
        ],
      ),
    );
  }

  Widget footerSection(){
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10,right: 15,top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(Icons.thumb_up_alt_outlined,color: Colors.blueAccent,size: 20,),
                SizedBox(width: 4,),
                Text(likeCount),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            child: Row(
              children: [
                displayText(lable: "$commentCount Comment"),
                SizedBox(width: 4,),
                displayText(lable: "$shareCount Share"),
                SizedBox(width: 4,),
                AvatarClipRRect(sizeValue: 20,imageLocation: asifali,),
                AvatarClipRRect(sizeValue: 20,imageLocation: NazriyaNazim,),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {
                  print("Clicked on Drop down button");
                },),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({@required String lable}){
    return Text(
      lable,style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget postImageSection(){
    return Container(
      padding: EdgeInsets.all(1),
      child: Image.asset(postImage),
    );
  }

  Widget titleSection(){
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      child: Text(postText,style: TextStyle(fontWeight: FontWeight.bold,),),
    );
  }

  Widget postCardHeader(){
    return ListTile(
      leading: AvatarClipRRect(
        imageLocation: avatarImage,
        sizeValue: 48,
        borderFlag: false,
        statusFlag: false,
      ),
      title: Row(
        children: [
          Text(
            postOwnerName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          blueTickStatus == true ? Container(
            margin: EdgeInsets.only(left: 5),
            child: Icon(Icons.check_circle,color: Colors.blue,size: 15,),
          ) : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedTime == null ? "" : publishedTime,style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 2,),
          Icon(Icons.public_rounded,color: Colors.grey[700],size: 20,),
        ],
      ),
      trailing: IconButton(onPressed: () {
        print("Clicked on more button");
      },icon: Icon(Icons.more_horiz_rounded,size: 30,),),
    );
  }
}
