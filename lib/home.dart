import 'package:fleeque/features/mini_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'features/swipe_card.dart';
import 'user_settings.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showAll = false;
  int selectedIndex = 0;

  List<Map<String, String>> profiles = [
    {
      'image': '/Users/a1/StudioProjects/fleeque/assets/images/img_4.png',
      'name': 'LILDRIGHILL',
      'followers': '10M',
      'posts': '100',
    },
    {
      'image': '/Users/a1/StudioProjects/fleeque/assets/images/img_5.png',
      'name': 'ROCKET',
      'followers': '5M',
      'posts': '50',
    },
    {
      'image': '/Users/a1/StudioProjects/fleeque/assets/images/img_6.png',
      'name': 'KING BOB',
      'followers': '3M',
      'posts': '30',
    },
  ];

  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      HomeContent(
        showAll: showAll,
        profiles: profiles,
        onToggleShowAll: toggleShowAll,
      ),
      InfluencersPage(
        showAll: showAll,
        profiles: profiles,
        onToggleShowAll: toggleShowAll,
      ),
      Center(child: Text('Questions')),
      Center(child: Text('Location')),
    ];
  }

  void onBottomNavTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void toggleShowAll() {
    setState(() {
      showAll = !showAll;


      pages[0] = HomeContent(
        showAll: showAll,
        profiles: profiles,
        onToggleShowAll: toggleShowAll,
      );
      pages[1] = InfluencersPage(
        showAll: showAll,
        profiles: profiles,
        onToggleShowAll: toggleShowAll,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserSettings()),
              );
            },
            icon: SvgPicture.asset(
              '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/svg/icon.svg',
              width: 30,
              height: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_balance_wallet_outlined,
                size: 30,
                color: Colors.red,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                '/Users/a1/Developer/me/DART/dart3/lesson66/lib/dz7/assets/svg/info.svg',
                width: 30,
                height: 30,
              ),
            ),
          ],
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'FLEEQUE',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: pages[selectedIndex],
            ),
            Material(
              elevation: 8,
              child: BottomNavigationBar(
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.star_border), label: 'Influencers'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.question_mark_rounded),
                      label: 'About'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.location_on_outlined),
                      label: 'Contact'),
                ],
                currentIndex: selectedIndex,
                onTap: onBottomNavTapped,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  final bool showAll;
  final List<Map<String, String>> profiles;
  final VoidCallback onToggleShowAll;

  HomeContent({
    required this.showAll,
    required this.profiles,
    required this.onToggleShowAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'POPULAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(width: 35),
            Text(
              'Swipe to explore Influencers',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 25),
        CarouselSlider(
          options: CarouselOptions(
            height: 350,
            enableInfiniteScroll: false,
            enlargeCenterPage: true,
          ),
          items: [
            buildCarouselItem('Kai Angel', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_1.png'),
            buildCarouselItem('9mice', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_2.png'),
            buildCarouselItem('Egor Kreed', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_3.png'),
          ],
        ),
        SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: showAll ? profiles.length : 2,
            itemBuilder: (context, index) {
              if (index >= profiles.length) {
                return Container();
              }
              final profile = profiles[index];
              return Container(
                height: 105,
                child: MiniProfile(
                  miniProfileImage: profile['image']!,
                  name: profile['name']!,
                  followers: profile['followers']!,
                  posts: profile['posts']!,
                ),
              );
            },
          ),
        ),
        Container(
          height: 50,
          width: 400,
          margin: EdgeInsets.only(bottom: 8),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: onToggleShowAll,
            child: Text(
              showAll ? 'See Less' : 'See More',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }
}

class InfluencersPage extends StatelessWidget {
  final bool showAll;
  final List<Map<String, String>> profiles;
  final VoidCallback onToggleShowAll;

  InfluencersPage({
    required this.showAll,
    required this.profiles,
    required this.onToggleShowAll,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 20),
            Text(
              'Influencers',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
            SizedBox(width: 130),
            SvgPicture.asset(
                '/Users/a1/StudioProjects/fleeque/assets/svg/settings.svg'),
            SizedBox(width: 15),
            Text(
              'Filter',
              style: TextStyle(fontSize: 23),
            ),
          ],
        ),
        SizedBox(height: 30),
        CarouselSlider(
          options: CarouselOptions(
            height: 280,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
          ),
          items: [
            buildCarouselItem('Kai Angel', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_1.png'),
            buildCarouselItem('9mice', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_2.png'),
            buildCarouselItem('Egor Kreed', '9999 FOLLOWERS, 999 POSTS',
                '/Users/a1/StudioProjects/fleeque/assets/images/img_3.png'),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: profiles.length + 1,
              itemBuilder: (context, index) {
                if (index < profiles.length) {
                  final profile = profiles[index];
                  return Container(
                    height: 105,
                    child: MiniProfile(
                      miniProfileImage: profile['image']!,
                      name: profile['name']!,
                      followers: profile['followers']!,
                      posts: profile['posts']!,
                    ),
                  );
                } else {
                  return Column(

                    children: [
                      SizedBox(height: 30,),
                      Container(
                        width: 400,
                        height: 120,

                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.center,
                        child: Center(
                          child: Text(
                            'if you dont find influencer just let us know and we will make sure they join Fleeque soon',
                            style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              }),
        ),
      ],
    );
  }
}
