import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
  final List<Widget> _pages = const [
    HomePage(),
    Workspace(),
    ExploreScreen(),
    FavouriteScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      // bottom nav barr
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 15.0,
          ),
          child: GNav(
            onTabChange: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            backgroundColor: Colors.white,
            color: Colors.white,
            gap: 8,
            activeColor: Colors.white,
            padding: const EdgeInsets.all(16.0),
            tabBackgroundColor: Color.fromARGB(158, 38, 150, 224),
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.workspaces_outline,
                text: 'Workspace',
              ),
              GButton(
                icon: Icons.explore_outlined,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.workspaces_outline,
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
      ),
      body: _pages[_pageIndex],
    );
  }
}
