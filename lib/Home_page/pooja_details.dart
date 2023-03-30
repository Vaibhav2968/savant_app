import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savant_app/Home_page/app_column.dart';
import 'package:savant_app/back_button.dart';

class pooja_details extends StatelessWidget {
  static double poojaDetailsImgSize= screenHeight/2.41;

  const pooja_details({Key? key}) : super(key: key);

  static get screenHeight => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/satyanarayan.jpg"))
                ),
              )),
          Positioned(
            top: 45,
            left: 20,
              right: 20,
              child: Row(
                children: [
                  BackIcon(icon: Icons.arrow_back_ios),



                ],

          )),
          Positioned(
            left: 0,
              right: 0,
              bottom: 0,
              top: 330,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Appcolumn(text: '',),

              ))
        ],
      ),
    );
  }
}
