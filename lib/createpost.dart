import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePost extends StatefulWidget{
  const CreatePost({super.key});
  @override
  State<CreatePost> createState() => new _newPostState();


}

class _newPostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child:Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(

                  child:Text(
                    textAlign: TextAlign.center,
                    "Create Post",
                    style: GoogleFonts.roboto(color:Colors.black,fontSize:40,),
                  ),
                )

              ],
            ),



          )

      ),

    );
  }
}