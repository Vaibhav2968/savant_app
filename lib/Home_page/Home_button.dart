import 'package:flutter/material.dart';
import 'package:savant_app/Home_page/side_scroll_home_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Container(
              height: 38,
              child: TextField(

                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search,color: Colors.deepOrange,),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none
                    ),

                    hintStyle: TextStyle(

                        fontSize: 14,
                        color: Colors.deepOrange
                    ),
                    hintText: "Search pooja"

                ),

              ),


            ),

          ],
        ),
      ),


      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
              child: side_scroll_home_page())),
        ],
      ),



    );
  }
}
