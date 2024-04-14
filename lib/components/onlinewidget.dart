import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnlineWidget extends StatefulWidget{
  final String img;
  const OnlineWidget({super.key, required this.img});
  @override
  State<StatefulWidget> createState() => new _onlineWidgetState();

}
class _onlineWidgetState extends State<OnlineWidget>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(widget.img),
                fit: BoxFit.cover
              )


            ),
        ),
    );
  }

}