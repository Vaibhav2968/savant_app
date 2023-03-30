import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language',
          style: GoogleFonts.aBeeZee(

          ),),

        backgroundColor: Colors.deepOrange,
        automaticallyImplyLeading: false,

      ),

    );
  }
}