import 'package:fleeque/123.dart';
import 'package:fleeque/user_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('/Users/a1/StudioProjects/fleeque/assets/images/background_img.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>UserSettings()));},
                    icon: SvgPicture.asset(
                      '/Users/a1/StudioProjects/fleeque/assets/svg/icon.svg', // Use relative path
                      width: 30,
                      height: 30,
                    ),
                  ),
                  const Text(
                    'FLEEQUE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: SvgPicture.asset(
                      '/Users/a1/StudioProjects/fleeque/assets/svg/info.svg', // Use relative path
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 300),
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'FLEEQUE',
                style: TextStyle(
                  fontSize: 75,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 50),
              Container(
                height: 60,
                width: 247,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StartSlider()));
                  },
                  child: const Text('GET STARTED'),
                ),
              ),
              const SizedBox(height: 160),
              const Text(
                '© ALL RIGHTS RESERVED',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}