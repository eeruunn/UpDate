import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Moment extends StatelessWidget {
  final String img;
  const Moment({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(img),
              fit: BoxFit.cover
            ),
            shape: BoxShape.rectangle,
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
