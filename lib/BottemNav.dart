import 'package:bb/Page2.dart';
import 'package:bb/Page3.dart';
import 'package:bb/pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottemNav extends StatefulWidget {
  const BottemNav({super.key});

  @override
  State<BottemNav> createState() => _BottemNavState();
}

class _BottemNavState extends State<BottemNav> {
  int index = 0;
  final screens = [HomePage(), Page2(), Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: Container(
        color: Color(0xFFE23744),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
          child: GNav(
              backgroundColor: Color(0xFFE23744),
              color: Colors.white,
              activeColor: Color(0xFFE23744),
              tabBackgroundColor: Colors.white,
              gap: 10,
              onTabChange: (index) {
                setState(() {
                  this.index = index;
                });
              },
              padding: EdgeInsets.all(6),
              tabs: const [
                GButton(icon: Icons.home, text: 'home'),
                GButton(icon: Icons.favorite, text: 'favorite'),
                GButton(icon: Icons.video_call, text: 'vlog'),
              ]),
        ),
      ),
    );
  }
}
