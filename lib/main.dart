import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savant_app/Home_page/Home_button.dart';
import 'package:savant_app/Home_page/pooja_details.dart';
import 'package:savant_app/login.dart';
import 'package:savant_app/Home_page/side_scroll_home_page.dart';
import 'package:savant_app/signup.dart';
import 'package:savant_app/splash_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash_screen(),
  ));
}




class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // we will give media query height
          // double.infinity make it big as my parent allows
          // while MediaQuery make it big as per the screen

          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
          child: Column(
            // even space distribution
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Welcome to Savant',
                    style: GoogleFonts.aBeeZee(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),


                  SizedBox(
                    height: 20,

                  ),
                  Text('"Bring pandit at your doorstep"',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.aBeeZee(
                    color: Colors.deepOrange.shade300,
                    fontSize: 20,


                  ),)

                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 200),
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/pandit_logo.png"),
                      fit: BoxFit.fitHeight
                  ),
                ),
              ),
              Column(
                // for loginpage

                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.deepOrange
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      'Login',
                      style: GoogleFonts.aBeeZee(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.deepOrange
                      ),
                    ),
                  ),

                  // for signup button
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignupPage()));
                    },
                    color: Color(0xffff5d00),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),

                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
