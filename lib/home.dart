import 'package:facebookclone/Widgets/PostCard.dart';
import 'package:facebookclone/Widgets/appBarButton.dart';
import 'package:facebookclone/Widgets/assets.dart';
import 'package:facebookclone/sections/headerSectionCustom.dart';
import 'package:facebookclone/sections/reelStorySection.dart';
import 'package:facebookclone/sections/roomSections.dart';
import 'package:facebookclone/sections/statusSection.dart';
import 'package:facebookclone/sections/suggestionSection.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            AppBarButton(
              buttonIcon: Icons.search_outlined,
              diameter: 38,
              buttonAction: () {
                print("top search button clicked");
              },
            ),
            AppBarButton(
              buttonIcon: Icons.chat,
              diameter: 38,
              buttonAction: () {
                print("top chat button clicked");
              },
            ),
          ],
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            greyDivider(thiknessVal: 2),
            HeaderSectionCustom(
              buttonOneText: "Live",
              iconDataOne: Icons.video_call_rounded,
              iconOneColor: Colors.red,
              buttonTwoText: "Photo",
              iconDataTwo: Icons.photo_library,
              iconTwoColor: Colors.blueAccent,
              buttonThreeText: "Short Video",
              iconDataThree: Icons.video_collection,
              iconThreeColor: Colors.blue,
            ),
            greyDivider(thiknessVal: 8),
            RoomSection(),
            greyDivider(thiknessVal: 8),
            ReelStorySection(),
            greyDivider(thiknessVal: 8),
            PostCard(
              avatarImage: mohanlal,
              postOwnerName: "Mohanlal",
              blueTickStatus: true,
              postImage: SufiyumSujatayum,
              publishedTime: "5hr",
              postText: "Happy Diwali..!",
              likeCount: "20k",
              commentCount: "20k",
              shareCount: "12k",
            ),
            PostCard(
              avatarImage: fahadfasil,
              postOwnerName: "fahad fasil",
              blueTickStatus: false,
              postImage: fahadWedding,
              publishedTime: "5hr",
              postText: "cute couple",
              likeCount: "120k",
              commentCount: "420k",
              shareCount: "122k",
            ),
            SuggestionSection(),
            PostCard(
              avatarImage: mammootty,
              postOwnerName: "mammootty",
              blueTickStatus: true,
              postImage: varane_avishyamund,
              publishedTime: "1min",
              postText: "DQ new Film",
              likeCount: "20k",
              commentCount: "20k",
              shareCount: "12k",
            ),
            PostCard(
              avatarImage: sevethDay,
              postOwnerName: "Prithviraj Skumaran",
              blueTickStatus: false,
              postImage: sevethDay,
              publishedTime: "1min",
              postText: "7th day ",
              likeCount: "20k",
              commentCount: "20k",
              shareCount: "12k",
            ),
            PostCard(
              avatarImage: shihab,
              postOwnerName: "Shihab shabz",
              blueTickStatus: true,
              postImage: shihab,
              publishedTime: "8hr",
              postText: "fun.. ",
              likeCount: "100k",
              commentCount: "200k",
              shareCount: "12k",
            ),
          ],
        ),
      ),
    );
  }
}

Widget greyDivider({double thiknessVal}){
  return Divider(
    thickness: thiknessVal,
    color: Colors.grey[300],
  );
}
