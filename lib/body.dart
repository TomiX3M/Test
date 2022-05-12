// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  late String title;
  late String subTitle;
  late String imageUrl;
  late Color color;

  final style = TextStyle(
    fontFamily: 'Billy',
    fontWeight: FontWeight.bold,
    fontSize:30,
    color: Colors.white,
  );

  Body({required this.imageUrl, required this.title, required this.subTitle,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
           child: Image.asset(imageUrl,fit: BoxFit.contain,)
           ,
          ),
          SizedBox(height: 84),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(title,
                style:style ),
          ),
          SizedBox(height: 25),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(subTitle,style:TextStyle(color: Colors.white,fontSize: 25)))
        ],
      ),
    );
  }
}