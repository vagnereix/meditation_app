import 'package:flutter/material.dart';
import 'package:meditation_app/widgets/bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomNavItem(
            svg: 'assets/icons/calendar.svg',
            title: 'Today',
            press: () {},
          ),
          BottomNavItem(
            svg: 'assets/icons/gym.svg',
            title: 'All Exercises',
            press: () {},
            isActive: true,
          ),
          BottomNavItem(
            svg: 'assets/icons/Settings.svg',
            title: 'Settings',
            press: () {},
          ),
        ],
      ),
    );
  }
}
