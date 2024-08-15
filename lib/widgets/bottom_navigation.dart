import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sopusons/pages/Profile_page.dart';
import 'package:sopusons/pages/explore_screen.dart';
import 'package:sopusons/pages/favourite_screen.dart';
import 'package:sopusons/pages/home_page.dart';
import 'package:sopusons/pages/workspace.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const Workspace(),
    ExploreScreen(),
    const FavouriteScreen(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: Colors.black26,
        // bottom nav barr
        bottomNavigationBar: Container(
          // color: Colors.amber,
          padding: const EdgeInsets.all(2),
          height: 90,
          width: _width,
          child: GNav(
            onTabChange: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            backgroundColor: Colors.white,
            color: const Color.fromARGB(172, 63, 60, 60),
            gap: 5,
            activeColor: Colors.blue,
            padding: const EdgeInsets.all(16.0),
            tabBackgroundColor: const Color.fromARGB(62, 38, 150, 224),
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
                style: GnavStyle.google,
              ),
              GButton(
                icon: Icons.workspaces_outline,
                text: 'Catergory',
                style: GnavStyle.google,
                // textSize: ,
                padding: EdgeInsets.all(15),
              ),
              GButton(
                icon: Icons.explore_outlined,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: 'Profile',
              )
            ],
            selectedIndex: _pageIndex,
          ),
        ),
        body: _pages[_pageIndex]);
  }
}
