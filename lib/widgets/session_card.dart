import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

class SessionCard extends StatelessWidget {
  final int sessionNumber;
  final bool isDone;
  final VoidCallback press;

  const SessionCard({
    Key? key,
    required this.sessionNumber,
    this.isDone = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          // padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                // spreadRadius: -23,
                color: ShadowColor,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Material(
                    color: isDone ? BlueColor : Colors.white,
                    child: InkWell(
                      onTap: press,
                      child: Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: BlueColor),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : BlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'Session ' +
                      (sessionNumber >= 10
                          ? '$sessionNumber'
                          : '0$sessionNumber'),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
