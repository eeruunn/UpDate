import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frstapp/components/swipecard.dart';
import 'package:swipe_cards/draggable_card.dart';
import 'package:swipe_cards/swipe_cards.dart';




class Date extends StatefulWidget{
  const Date({Key? key}):super(key: key);
  @override
  State<Date> createState() => _dateState();

}

class _dateState extends State<Date>{
  MatchEngine? _matchEngine;
  final List<SwipeItem> _swipeItems = [];

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  // List<String> _names = ["Red", "Blue", "Green", "Yellow", "Orange"];
  // List<Color> _colors = [
  //   Colors.red,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.yellow,
  //   Colors.orange
  // ];
  List<String> listData = [
    "assets/images/30.jpg",
    "assets/images/31.jpg",
    "assets/images/32.jpg",
    "assets/images/33.jpg",
    "assets/images/34.jpg",
    "assets/images/35.jpg",
    "assets/images/img10.jpg",
    "assets/images/img11.jpg",
    "assets/images/img12.jpg",
    "assets/images/img13.jpg",
    "assets/images/img14.jpg",
    "assets/images/img15.jpg",
    "assets/images/img16.jpg",
    "assets/images/img17.jpg",
    "assets/images/img18.jpg",
    "assets/images/img20.jpg",
    "assets/images/img21.jpg",
    "assets/images/img22.jpg",
    "assets/images/img23.jpg",
    "assets/images/img24.jpg",
    "assets/images/img25.jpg",
    "assets/images/img26.jpg",


  ];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < listData.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(img: listData[i]),
          likeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Liked "),
              duration: Duration(milliseconds: 500),
            ));
          },
          nopeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Nope"),
              duration: Duration(milliseconds: 500),
            ));
          },
          superlikeAction: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Superliked"),
              duration: Duration(milliseconds: 500),
            ));
          },
          onSlideUpdate: (SlideRegion? region) async {
            print("Region $region");
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: Container(
          margin: EdgeInsets.only(top: 40),
            child: Column(children: [
              Container(
                height: 600,
                child: SwipeCards(
                  matchEngine: _matchEngine!,
                  itemBuilder: (BuildContext context, int index) {
                    return Swipecard(img:listData[index],);
                  },
                  onStackFinished: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Stack Finished"),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                  itemChanged: (SwipeItem item, int index) {
                    print("item:, index: $index");
                  },
                  upSwipeAllowed: true,
                  fillSpace: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.cancel_rounded,color: Colors.redAccent,size: 70,),
                      onPressed: () {
                        _matchEngine!.currentItem?.nope();
                      },
                      ),

                  IconButton(
                      icon: Icon(Icons.favorite,color: Colors.red,size: 100,),
                      onPressed: () {
                        _matchEngine!.currentItem?.like();
                      },
                      ),
                  IconButton(
                    icon: Icon(Icons.star,color: Colors.amber,size: 70,),
                    onPressed: () {
                      _matchEngine!.currentItem?.superLike();
                    },
                  ),
                ],
              )
            ])));
  }

}
class Content {
  final String img;

  Content({required this.img});
}
