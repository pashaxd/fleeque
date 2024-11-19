import 'package:flutter/material.dart';

class MiniProfile extends StatelessWidget {
  final String miniProfileImage;
  final String name;
  final String followers;
  final String posts;

  const MiniProfile({
    Key? key,
    required this.miniProfileImage,
    required this.name,
    required this.followers,
    required this.posts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        Container(
          width: 105,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(miniProfileImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 1),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),


                Row(
                  children: [
                    Text(
                      'FOLLOWERS',
                      style: TextStyle(),
                    ),
                    SizedBox(width:150),
                    Text(
                      '$followers',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Text(
                      'POSTS',
                      style: TextStyle(),
                    ),
                    SizedBox(width:190),
                    Text(
                      '$posts',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

          ],
        ),
      ],
    );
  }
}