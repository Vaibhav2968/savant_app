import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final Color backgroundColor;


   BackIcon({Key? key,
  required this.icon,
    this.backgroundColor=const Color(0x74ffffff),
     this.iconColor=const Color(0xFF000000),
     this.size=40
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundColor
      ),
      child: Icon(icon,size: 25,
      color:iconColor ,),
    );
  }
}
