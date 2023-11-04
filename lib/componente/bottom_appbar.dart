import 'package:assignment/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            gap: 10,
            color: MyColors.greycolor,
            activeColor: Colors.white,
            tabBackgroundColor: MyColors.ambercolor,
            tabBorderRadius: 10,
            tabs: [
              GButton(
                padding: EdgeInsets.all(15),
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                padding: EdgeInsets.all(15),
                icon: Icons.groups,
                text: 'Groups',
              ),
              GButton(
                padding: EdgeInsets.all(15),
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
