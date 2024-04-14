import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Swipecard extends StatefulWidget {
  final String img;

  const Swipecard({super.key, required this.img});

  @override
  State<Swipecard> createState() => new _swipeCardstate();
}

class _swipeCardstate extends State<Swipecard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Container(
        width: 400,
        height: 600,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.grey,
            image: DecorationImage(image: AssetImage(widget.img),fit: BoxFit.cover)),
        child: Column(
          children: [],
        ),
      ),
    ));
  }
}
