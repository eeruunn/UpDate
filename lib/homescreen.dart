import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frstapp/components/post.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frstapp/components/momentbtn.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      "assets/images/img5.jpeg",
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
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: GestureDetector(
            onDoubleTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Kandadokke kuttathe Erangi poda Myre..")));
            },
            child: Text(
              "App001",
              style: GoogleFonts.pacifico(),
            ),
          )
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Moments",
                  style: GoogleFonts.itim(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    itemCount: listData.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Moment(
                        img: listData[index],
                      );
                    }),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 15),
                child: Text(
                  "Posts",
                  style: GoogleFonts.itim(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: listData.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Post(
                      img: listData[index],
                    );
                  }),
            ],
          ),
        ));
  }
}
