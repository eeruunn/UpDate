import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget{
  const Account({super.key});
  @override
  State<StatefulWidget> createState() => new _accountState();


}
class _accountState extends State<Account>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Youe Account",
          style: GoogleFonts.itim(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage("assets/images/img2.jpg"),
                  fit: BoxFit.cover
                )
              ),
            ),
            Text(
              "Kimberly",
              style: GoogleFonts.varelaRound(fontSize:30),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Followers",
                          style: GoogleFonts.varelaRound(),
                        ),
                        Text(
                            "186k",
                            style: GoogleFonts.varelaRound(fontSize:20,fontWeight:FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                            "Following"
                        ),
                        Text(
                            "256k",
                          style: GoogleFonts.varelaRound(fontSize:20,fontWeight:FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )
            ),

            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Your Posts",
                style: GoogleFonts.itim(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
          ],

        ),
      )
    );
  }

}