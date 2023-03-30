import 'dart:html';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class side_scroll_home_page extends StatefulWidget {
  const side_scroll_home_page({Key? key}) : super(key: key);

  @override
  State<side_scroll_home_page> createState() => _side_scroll_home_pageState();
}

class _side_scroll_home_pageState extends State<side_scroll_home_page> {
  PageController pageController = PageController(viewportFraction: 0.90);
  var currPageValue=0.0;
  double _scaleFactor=0.8;
  double _hieght=200;

  @override
  void initState(){
    super.initState();

    pageController.addListener(() {
      setState(() {
        currPageValue=pageController.page!;

      });

    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      height: 250,
      child: PageView.builder(
        controller: pageController,
        itemCount: 4,
        itemBuilder:(context, index) {
          return
            _buildPageItem(index);
        },),
    ),
    new DotsIndicator(
    dotsCount: 4,
    position: currPageValue,
    decorator: DotsDecorator(

    activeColor: Colors.deepOrange.shade300,

    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),

        SizedBox(height:30,),
        Container(
          margin: EdgeInsets.only(left: 30,bottom: 20),
          child: Row(
            children: [
              Text('Popular',
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold,fontSize: 23
              ),),
            ],

          ),
        ),
        
        Container(
          height: 900,
          child: ListView.builder(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width:120,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white38,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("assets/grah_ pravesh.jpg"))

                        ),
                      ),

                      Expanded(
                        child: Container(
                          height: 100,
                            
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Grah Pravesh Pooja',



                                    style: GoogleFonts.aBeeZee(

                                      fontSize: 19,
                                      fontWeight: FontWeight.bold
                                    ),),

                                    Text('Griha Pravesh pooja, or housewarming ceremony, is a Hindu act of worship that is usually undertaken before moving into a new house to protect it from negative energy.',


                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 11,
                                        color: Colors.grey

                                      ),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ),
                      )
                    ],
                  ),

                );
              }),
        )

      ],
    );

  }

  Widget _buildPageItem(int index){
    Matrix4 matrix = new Matrix4.identity();
    if(index==currPageValue.floor()){
      var currScale = 1-(currPageValue-index)*(1-_scaleFactor);
      var currTrans= _hieght*(1-currScale)/2;
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index==currPageValue.floor()+1){
      var currScale = _scaleFactor+(currPageValue-index+1)*(1-_scaleFactor);
      var currTrans= _hieght*(1-currScale)/2;
      matrix= Matrix4.diagonal3Values(1, currScale, 1);
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }

    else if(index==currPageValue.floor()-1){
      var currScale = 1-(currPageValue-index)*(1-_scaleFactor);
      var currTrans= _hieght*(1-currScale)/2;
      matrix= Matrix4.diagonal3Values(1, currScale, 1);
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _hieght*(1-_scaleFactor)/2, 1);

    }







  return Transform(
      transform: matrix,
      child: Stack(
        children: [
        Container(
        height: 200,
        margin: EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/satyanarayan.jpg"
                )),
        ),
      ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              margin: EdgeInsets.only(left: 15,right: 15,bottom: 17),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,

                  )
                ]


              ),
              child: Container(

                  padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                child: Column(
                  children: [
                    Text('Satyanarayan Pooja',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 25,
                    ),),
                    SizedBox(height: 10)
                  ],
                ),
              ),

            ),
          ),


        ],

      ),
    );

  }
}
