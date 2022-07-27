import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/widgets/bottom_nav_bar.dart';
import 'package:meditation_app/widgets/category_card.dart';
import 'package:meditation_app/widgets/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/ndraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Color(0xFFF2BEA1),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(),
                            child: SvgPicture.asset('assets/icons/menu.svg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Good Morning Vagner",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                  ),
                  Search(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .90,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                      children: [
                        CategoryCard(
                          title: 'Diet Recommendation',
                          svg: 'assets/icons/Hamburger.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Exercises',
                          svg: 'assets/icons/Excrecises.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Meditation',
                          svg: 'assets/icons/Meditation.svg',
                          press: () {
                            Navigator.pushNamed(context, '/details');
                          },
                        ),
                        CategoryCard(
                          title: 'Yoga',
                          svg: 'assets/icons/yoga.svg',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
