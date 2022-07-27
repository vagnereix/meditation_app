import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/search.dart';
import 'package:meditation_app/widgets/session_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: BlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall
                          ?.copyWith(fontWeight: FontWeight.w900, fontSize: 40),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '3~10 min course',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6,
                      child: Text(
                          'Live happier and healthier by learning the fundamentals of meditation and mindfulness.'),
                    ),
                    SizedBox(
                      width: size.width * .55,
                      child: Search(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        SessionCard(
                          sessionNumber: 1,
                          isDone: true,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNumber: 2,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNumber: 3,
                          press: () {},
                        ),
                        SessionCard(
                          sessionNumber: 4,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Meditation',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 15,
                            spreadRadius: -17,
                            color: ShadowColor,
                          ),
                        ],
                      ),
                      child: Center(
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          leading: SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                          title: Text(
                            'Basic 2',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          subtitle: Text('Start your deepen you practice'),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
