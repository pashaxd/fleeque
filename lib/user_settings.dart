import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.white,
                icon: const Icon(Icons.arrow_back),
                onPressed: () {Navigator.pop(context);
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'ADD PICTURE',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('HELLO', style: TextStyle(fontSize: 15)),
            Text(
              'Rima Justiniano',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'YOUR NAME',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'YOUR EMAIL',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'YOUR NUMBER',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'YOUR INSTAGRAM NAME',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(17),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'YOUR BANK DETAILS',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 75,
              padding: EdgeInsets.fromLTRB(17, 17, 17, 0),
              child: ElevatedButton(

                onPressed: () {},
                child: Text('SAVE'),
                style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
