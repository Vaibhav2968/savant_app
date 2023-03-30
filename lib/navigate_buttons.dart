import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savant_app/account/Account_page.dart';
import 'package:savant_app/Booking_page.dart';
import 'package:savant_app/Home_page/Home_button.dart';
import 'package:savant_app/Poojas_page.dart';



class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);


  @override
  State<Home_Page> createState() => _Home_PageState();
}


class _Home_PageState extends State<Home_Page> {
  int _selectedIndex =0;


  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    poojas(),
    Bookings(),
    Account(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //////////////////////  Navigation Buttons at bottom  ////////////////////

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: GNav(
        backgroundColor: Colors.white70,
        tabBackgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),


        tabs: [
          GButton(
            icon: Icons.home,
            iconColor: Colors.deepOrange,
            iconActiveColor: Colors.deepOrange,
            textColor: Colors.deepOrange,
            text: 'Home',


          ),
          GButton(
            icon: Icons.temple_hindu_sharp,
            textColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            iconActiveColor: Colors.deepOrange,
            text: 'poojas',

          ),

          GButton(
            icon: Icons.shopping_cart_rounded,
            textColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            iconActiveColor: Colors.deepOrange,
            text: 'Bookings',
          ),

          GButton(
            icon: Icons.person,
            textColor: Colors.deepOrange,
            iconColor: Colors.deepOrange,
            iconActiveColor: Colors.deepOrange,
            text: 'Account',


          ),

        ],

        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

