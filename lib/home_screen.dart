import 'package:assignment/colors/my_colors.dart';
import 'package:assignment/componente/bottom_appbar.dart';
import 'package:assignment/componente/button.dart';
import 'package:assignment/componente/indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarWidget(),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            SizedBox(
              height: 695,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/image.png',
                    fit: BoxFit.cover,
                    width: 433,
                    height: 250,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 19,
                      top: 10,
                    ),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(
                        height: 53,
                        width: 317,
                      ),
                      child: const Text(
                        'Kylie Jenner Built a Beauty Empire. Now She’s Coming for Fashion',
                        style: TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(0, 1),
                              blurRadius: 1.0,
                              color: Color.fromARGB(255, 95, 92, 92),
                            ),
                          ],
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          fontFamily: 'AbhayaLibre',
                          color: MyColors.blackcolor,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 5),
                    child: CreatePollButton(
                      strokeWidth: 0.5,
                      radius: 3,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFF2F2F2),
                          Color(0xFFF58600),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      child: const Text(
                        'Create Poll',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color(0xFFF58600),
                          fontFamily: 'Poppins',
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(height: 7),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.3),
                    child: ConstrainedBox(
                      constraints: BoxConstraints.tight(
                        const Size(307, 189),
                      ),
                      child: const Text(
                        'BAREFOOT AND WRAPPED in a robe in a hushed Paris hotel suite, 26-year-old entrepreneur and reality star Kylie Jenner is seated at her altar: a vanity. Her longtime hair and makeup artists—who are also her confidantes—hover around her like discreet, blackcolor-garbed hummingbirds, making imperceptible tweaks to her long dark hair and flawless skin.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: MyColors.greycolor,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        3,
                        (index) => Indicator(
                            isActive: currentIndex == index ? true : false),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 28.37),
                      const Expanded(
                          child: Divider(
                        thickness: 1,
                        color: MyColors.greycolor,
                      )),
                      const SizedBox(width: 7.13),
                      CircleAvatar(
                        backgroundColor: MyColors.greycolor,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.bookmark,
                            size: 23,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.07),
                      CircleAvatar(
                        backgroundColor: MyColors.greycolor,
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.volume_up_rounded,
                          ),
                        ),
                      ),
                      const SizedBox(width: 25.97),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Row(
                      children: [
                        TextButton.icon(
                          style: const ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                              iconColor:
                                  MaterialStatePropertyAll(MyColors.greycolor)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.thumb_up_alt_rounded,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                              '543',
                              style: TextStyle(
                                color: MyColors.greycolor,
                              ),
                            ),
                          ),
                        ),
                        TextButton.icon(
                          style: const ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.zero),
                              iconColor:
                                  MaterialStatePropertyAll(MyColors.greycolor)),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.message_rounded,
                          ),
                          label: const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              '543',
                              style: TextStyle(
                                color: MyColors.greycolor,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 610,
              right: -30,
              left: -30,
              child: Stack(
                children: [
                  const Ellipse40(),
                  const Positioned(
                    left: 200,
                    top: 28,
                    child: Entertainment(),
                  ),
                  const Positioned(
                    left: 72,
                    top: 70,
                    child: Text(
                      'Sports',
                      style: TextStyle(
                        color: Color(0xFF464646),
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Positioned(
                    left: 138,
                    top: 68,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints.tightFor(height: 50, width: 50),
                      child: const Text(
                        'Tech and Business',
                        style: TextStyle(
                          color: Color(0xFF464646),
                          fontSize: 7,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 190,
                    top: 71,
                    child: Text(
                      'Entertainment',
                      style: TextStyle(
                        color: Color(0xFFE56F08),
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 280,
                    top: 75,
                    child: Text(
                      'Treanding',
                      style: TextStyle(
                        color: Color(0xFF464646),
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 360,
                    top: 75,
                    child: Text(
                      'Live',
                      style: TextStyle(
                        color: Color(0xFF464646),
                        fontSize: 7,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
