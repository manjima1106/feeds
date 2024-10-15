import 'package:flutter/material.dart';

class Twoabout extends StatelessWidget {
  Twoabout({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 20,
            color: Color(0xff260446),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/share_windows.png',
                  width: 24,
                  height: 20,
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/images/more_vert.png',
                  width: 24,
                  height: 28,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  height: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(5.0),
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'assets/images/Ellipse 84.png',
                            width: 40,
                            height: 60,
                          ),
                          const SizedBox(width: 10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'James',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(65, 78, 202, 1),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'UI/UX Designer at google',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xff404DC7),
                          border: Border.all(
                              color: const Color(0xff6F7BEC), width: 1),
                        ),
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 234, 237, 239),
                          ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 400,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: 400,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 50,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff414ECA),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Articles',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff6C6262),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 30),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '12.3K',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff414ECA),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'followers',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff6C6262),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: 1,
                          height: 50,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '125',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff414ECA),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Additional Text',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff6C6262),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 400,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Articles',
                  style: TextStyle(
                    color: Color(0xff414ECA),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    color: Color(0xff6C6262),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  width: 200,
                  color: const Color(0xff414ECA),
                ),
                const SizedBox(width: 0),
                Container(
                  height: 1,
                  width: 200,
                  color: const Color(0xff8B8B8B),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'A UI/UX designer is the mastermind behind the scenes of the digital \n products you use every day, ensuring they are not only visually \n appealing but also functional and enjoyable to use. They bridge the \n gap between the technical aspects and the user experience, \n considering both the aesthetics and the usability.',
                  style: TextStyle(
                    color: Color(0xff8B8B8B),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Social Media',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Linkedin.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Linkedin',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Github.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Github',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Social.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Behance',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Dribble Big Logo.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Dribble',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 400,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'More Info',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/globe.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'www.jameshok.com',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/assistant_navigation.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Bangalore, India',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/bubble_chart.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  'Joined since Aug,2024',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/analytics.png',
                  width: 50,
                  height: 30,
                ),
                const Text(
                  '124887 Readers',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8B8B8B)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
