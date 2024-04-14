import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:frstapp/register.dart';
import 'package:frstapp/appmain.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15),
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
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Username",
                            hintStyle: GoogleFonts.openSans(),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                      )),

                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        width: 350,
                        height: 60,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[200],
                            hintText: "Password",
                            hintStyle: GoogleFonts.openSans(),
                            labelStyle: GoogleFonts.openSans(),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                const BorderSide(color: Colors.transparent, width: 2),
                                borderRadius: BorderRadius.circular(15)),
                          ),
                          obscureText: true,
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Forgot password pressed");
                    },
                    child: Text(
                      "Forgot password ?",
                      style: GoogleFonts.roboto(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        print("Login Unsuccessful");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.normal)),
                      child: Text(
                        "Login",
                        style: GoogleFonts.roboto(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Don't Have an account ? ",
                            style: GoogleFonts.roboto(color:Colors.black,fontSize:15)
                        ),
                        TextSpan(
                            text: "Create One ",
                            style: GoogleFonts.roboto(color:Colors.blue,fontSize:15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Create account pressed");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
                              })
                      ])),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Skip for now",
                            style: GoogleFonts.roboto(color:Colors.blue,fontSize:15),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("Create account pressed");
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Mainapp()));
                              })
                      ]))
                ],
              ),
            ),
          )),
    );
  }
}