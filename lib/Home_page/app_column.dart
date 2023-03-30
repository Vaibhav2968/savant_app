import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Appcolumn extends StatelessWidget {
  final String text;
  const Appcolumn({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Grah Pravesh Pooja',
          textAlign: TextAlign.start,


          style: GoogleFonts.aBeeZee(

              fontSize: 28,
              fontWeight: FontWeight.bold
          ),),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('Griha Pravesh pooja, or housewarming ceremony, is a Hindu act of worship that is usually undertaken before moving into a new house to protect it from negative energy.',


            style: GoogleFonts.aBeeZee(
                fontSize: 23,
                color: Colors.grey

            ),),
        ),
      ],
    );
  }
}
