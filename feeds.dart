import 'package:flutter/material.dart';
import 'package:mara/collections1.dart';
import 'package:mara/createnew.dart';
import 'package:mara/discover.dart';
import 'package:mara/search.dart';

class Feeds extends StatelessWidget {
  Feeds({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 1),
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            const SizedBox(
              width: 120,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Createnew(),
                      ),
                    );
                  },
                  child: Container(
                    child: const Icon(
                      Icons.add,
                      size: 20,
                      color: Color(0xff414ECA),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Discover(),
                      ),
                    );
                  },
                  child: Container(
                    child: const Icon(
                      Icons.explore,
                      size: 20,
                      color: Color(0xff414ECA),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Search(),
                      ),
                    );
                  },
                  child: Container(
                    child: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff414ECA),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Collections1(),
                      ),
                    );
                  },
                  child: Container(
                    child: const Icon(
                      Icons.style,
                      size: 20,
                      color: Color(0xff414ECA),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 1,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)),
                    height: 630,
                    width: 368,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30),
                            ),
                            Image.asset('assets/images/feedimg1.png')
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 15),
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const Column(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 1, right: 70),
                                  child: Text(
                                    'James Hok',
                                    style: TextStyle(
                                        color: Color(0xff414ECA),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 1,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 10, left: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'UIUX Designer at Google',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xff8B8B8B)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff8B8B8B), width: 1),
                              ),
                              height: 30,
                              width: 86,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Designs',
                                    style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff8B8B8B), width: 1),
                              ),
                              height: 30,
                              width: 86,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Placements',
                                    style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff8B8B8B), width: 1),
                              ),
                              height: 30,
                              width: 86,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'MAANG',
                                    style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                'Best Practices for Cracking the 1st and ',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 11),
                              child: Text(
                                '2nd Tier MNC’s from Institute..!',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                ' Embarking on a journey to join a first-tier multinational \n corporation (MNC) straight out of your institute is an aspiration \n shared by many ambitious individuals. These prestigious \n organizations offer not Embarking on a journey to join a first- \n tier multinational corporation (MNC) straight out of your \n institute is an aspiration shared by many ambitious individuals. \n These prestigious...',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff5A5F63)),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 46,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              '3 Days Ago',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff8B8B8B)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xff414ECA),
                                border: Border.all(
                                    color: const Color(0xff6F7BEC), width: 1),
                              ),
                              height: 50,
                              width: 150,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Read more',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 238, 240, 241),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Recent Articles',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3A0070)),
                  ),
                  const SizedBox(
                    width: 220,
                  ),
                  Image.asset('assets/images/arrow_right_alt.png')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 7.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 6.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'Your Published Articles',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3A0070)),
                  ),
                  const SizedBox(
                    width: 175,
                  ),
                  Image.asset('assets/images/arrow_right_alt.png')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 7.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 6.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    'On Your Bookmarks',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3A0070)),
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Collections1(),
                            ));
                      },
                      child: Image.asset('assets/images/arrow_right_alt.png'))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 7.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 260,
                    width: 175,
                    color: const Color.fromRGBO(249, 246, 246, 1),
                    child: Column(
                      children: [
                        Container(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 6.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          children: [
                            Text(
                              '10 tips for Boosting \n your Productivity ...',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff414ECA)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset(
                                'assets/images/prof1.png',
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'James Hok',
                              style: TextStyle(
                                  color: Color(0xff414ECA),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '5 days ago',
                              style: TextStyle(
                                  color: Color(0xff8B8B8B),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10),
                            ),
                            Image.asset('assets/images/more_vert.png')
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    'We’re Working to  ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8B8B8B)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    'expand ',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff8B8B8B)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'feeds !',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    '🧡 from ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff8B8B8B)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'ShareInfo',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xffF19A6B)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'community team',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff8B8B8B)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
