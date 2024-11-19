import 'package:flutter/material.dart';

Widget buildCarouselItem(String name, String followers, String imagePath) {
  return Container(
    height: 500,
    child: Center(
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          Text(
            followers,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
    padding: EdgeInsets.only(top:200),
  );
}