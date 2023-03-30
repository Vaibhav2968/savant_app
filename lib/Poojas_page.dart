import 'package:flutter/material.dart';

class poojas extends StatefulWidget {
  const poojas({Key? key}) : super(key: key);

  @override
  State<poojas> createState() => _poojasState();
}

class _poojasState extends State<poojas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poojas',
        textAlign: TextAlign.left,),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepOrange,
      ),

    );
  }
}
