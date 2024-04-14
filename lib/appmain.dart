
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frstapp/chat.dart';
import 'package:frstapp/components/momentbtn.dart';
import 'package:frstapp/createpost.dart';
import 'package:frstapp/date.dart';
import 'package:frstapp/homescreen.dart';
import 'package:go_router/go_router.dart';

import 'account.dart';

class Mainapp extends StatefulWidget {
  const Mainapp({super.key});

  @override
  State<Mainapp> createState() => NavigationState();
}

class NavigationState extends State<Mainapp> {
  int currentPageIndex = 0;
  final pages = [
    MyHomePage(),Chat(),CreatePost(),Date(),Account()
  ];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: pages[currentPageIndex],

      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            if(index==2){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CreatePost()));
            }else{
              currentPageIndex = index;
            }
          });
        },
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.transparent,
        indicatorShape: CircleBorder(),
        destinations: const <Widget>[
          NavigationDestination(
              selectedIcon: Icon(
                Icons.home,
                color: Colors.red,
                size: 30,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
                size: 30,
              ),
              label: "Home"),

          NavigationDestination(
              selectedIcon: Icon(
                Icons.chat_bubble,
                color: Colors.red,
                size: 30,
              ),
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
                size: 30,
              ),
              label: "Chat"),

          NavigationDestination(
              selectedIcon: Icon(
                Icons.add_circle_rounded,
                color: Colors.red,
                size: 30,
              ),
              icon: Icon(
                Icons.add_circle_outline_outlined,
                color: Colors.black54,
                size: 30,
              ),
              label: "Settings"),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 30,
              ),
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.black54,
                size: 30,
              ),
              label: "Discover"),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.account_circle,
                color: Colors.red,
                size: 30,
              ),
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.black54,
                size: 30,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}
