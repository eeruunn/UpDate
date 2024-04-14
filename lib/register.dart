import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //logo
                  Image.asset(
                    "assets/icons/icon.png",
                    height: 200,
                    width: 200,
                  ),
                  //username input
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextField(
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Email",
                            hintStyle: GoogleFonts.openSans(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      )),

                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextField(
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Full Name",
                            hintStyle: GoogleFonts.openSans(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      )),

                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextField(
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Password",
                            hintStyle: GoogleFonts.openSans(),
                            labelStyle: GoogleFonts.openSans(),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          obscureText: true,
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Login Unsuccessful");
                      },
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Already have an account ?  ",
                            style: GoogleFonts.roboto(
                                color: Colors.black, fontSize: 15)),
                        TextSpan(
                            text: "Sign in ",
                            style: GoogleFonts.roboto(
                                color: Colors.blue, fontSize: 15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("signin account pressed");
                                Navigator.of(context).pop();
                              })
                      ]))
                ],
              ),
            ),
          )),
    );
  }
}
