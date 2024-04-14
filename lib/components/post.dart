import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatefulWidget {
  final String img;

  const Post({super.key, required this.img});

  @override
  State<StatefulWidget> createState() => PostState();
}

class PostState extends State<Post> {
  bool liked = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
                child: Stack(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.img), fit: BoxFit.cover),
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      "Anirudh Rajeev",
                      style:
                          GoogleFonts.varelaRound(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            )),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ),
        Container(
          width: double.infinity,
          child: Image.asset(widget.img),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SizedBox(
              height: 175,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              liked = !liked;
                            });
                          },
                          icon: Icon(
                            (liked == false)
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: (liked == false) ? Colors.red : Colors.grey,
                            size: 40,
                          )),
                      IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(
                            Icons.comment_outlined,
                            color: Colors.grey,
                            size: 40,
                          )),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(
                      "100k likes, 58 Comments ",
                      style: GoogleFonts.varelaRound(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Anirudh Rajeev : ",
                      style: GoogleFonts.varelaRound(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    TextSpan(
                      text:
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industr...",
                      style: GoogleFonts.varelaRound(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                      ),
                    )
                  ])),
                ],
              )),
        ),
      ],
    );
  }
}
