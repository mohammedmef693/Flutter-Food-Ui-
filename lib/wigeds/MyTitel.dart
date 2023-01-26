import 'package:flutter/material.dart';

class MyTitel extends StatelessWidget {
  const MyTitel({
    Key? key,
    required this.titel,
    required this.fontsize,
  }) : super(key: key);

  final String titel;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      titel,
      style: TextStyle(
          color: Colors.black, fontSize: fontsize, fontWeight: FontWeight.bold),
    );
  }
}
