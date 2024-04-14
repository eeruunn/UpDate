import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatWidget extends StatefulWidget {
  final String img;

  const chatWidget({super.key, required this.img});

  @override
  State<chatWidget> createState() => new ChatState();
}

class ChatState extends State<chatWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        "Anirudh Rajeev",
                        style: GoogleFonts.varelaRound(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Hello Echoos me mownu ..",
                        style: GoogleFonts.varelaRound(
                            fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
                width: 25,
                height: 25,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.green),
                child: Center(
                  child: Text(
                    "1",
                    style: GoogleFonts.roboto(color: Colors.white,fontWeight:FontWeight.w900),
                  ),
                )),
          ),

          // IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.))
        ],
      ),
    );
  }
}
