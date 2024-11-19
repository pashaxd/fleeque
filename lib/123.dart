import 'package:fleeque/home.dart';
import 'package:fleeque/user_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';

class StartSlider extends StatelessWidget {
  const StartSlider({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserSettings()));
            },
            icon: SvgPicture.asset(
              '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/svg/icon.svg',
              width: 30,
              height: 30,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/svg/info.svg',
                width: 20,
                height: 25,
              )),
        ],
        backgroundColor: Colors.black,
        title: Text(
          'FLEEQUE',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: OnBoardingSlider(
        controllerColor: Colors.black,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Done',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        onFinish: () {Navigator.push(context,
      MaterialPageRoute(builder: (context) => Home()));} ,
        background: [
          Image.asset(
              '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/images/img.png'),
          Image.asset(
              '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/images/img.png'),
          Image.asset(
              '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/images/img.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Create the perfect shoutout to your friends from their favorite influencers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Is it your friends birthday and you want to get her something unforgettable. Why not buy her a birthday greeting from her favorite influencer?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Create the perfect shoutout to your friends from their favorite influencers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Is your friend getting married and you want to send her a little extra special wedding wish? Who better than her favorite celebrity?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 60,
                ),
                Text(
                  'Create the perfect shoutout to your friends from their favorite influencers',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Have you dreamt about appearing on the instagram story of your favorite influencer, why not buy a shoutout on her story tagging you for the world to see?',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
