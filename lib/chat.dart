import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frstapp/components/chatwidget.dart';
import 'package:frstapp/components/onlinewidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => new _chatState();
}

class _chatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    List<String> listData = [
      "assets/images/img1.jpg",
      "assets/images/img2.jpg",
      "assets/images/img3.jpg",
      "assets/images/img4.jpg",
      "assets/images/img5.jpeg",
      "assets/images/img6.jpg",
      "assets/images/img2.jpg",
      "assets/images/img3.jpg",
      "assets/images/img1.jpg",
      "assets/images/img5.jpeg"
    ];
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.search,size: 30,color: Colors.black) ,
                onPressed: (){

                },
              ) ,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:IconButton(
                icon: Icon(Icons.more_horiz,size: 30,color: Colors.black,) ,
                onPressed: (){

                },
              ) ,
            )

          ],
          title: Text(
            "Chats",
            style: GoogleFonts.itim(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemCount: listData.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return OnlineWidget(
                          img: listData[index],
                        );
                      }),
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: listData.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return chatWidget(img: listData[index]);
                    })
              ],
            )
        ));
  }
}
