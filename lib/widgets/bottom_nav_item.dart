import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';

class BottomNavItem extends StatelessWidget {
  final String svg;
  final String title;
  final VoidCallback press;
  final bool isActive;

  const BottomNavItem({
    Key? key,
    required this.svg,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svg, color: isActive ? ActiveIconColor : TextColor),
          Text(
            title,
            style: TextStyle(
              color: isActive ? ActiveIconColor : TextColor,
            ),
          ),
        ],
      ),
    );
  }
}
