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
        title: Text('Bookings',
        style: GoogleFonts.aBeeZee(

        ),),

        backgroundColor: Colors.deepOrange,
        automaticallyImplyLeading: false,

      ),
      body: Container(
        child: Center(
          child: Text('No bookings right now\nBook your pandit \n :)',
          textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              fontSize: 20,


            ),
          ),
        ),
      ) ,
    );
  }
}
