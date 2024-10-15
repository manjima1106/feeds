import 'package:flutter/material.dart';
import 'package:mara/comments.dart';

class Adv extends StatelessWidget {
  Adv({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 300,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/IMage.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 220,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/bookmarks2.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 5),
                        Image.asset(
                          'assets/images/send.png',
                          width: 50,
                          height: 50,
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  titlePadding: EdgeInsets.only(left: 60),
                                  title: Text(
                                    'Delete Article',
                                    style: TextStyle(
                                      color: Color(0xffF31919),
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  content: Text(
                                    'Are You Sure Want to Delete \n                 this Article',
                                    style: TextStyle(
                                        color: Color(0xff260446),
                                        fontSize: 15,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  actions: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color(0xffE4E7FC),
                                            border: Border.all(
                                                color: Color(0xffE4E7FC),
                                                width: 1),
                                          ),
                                          height: 50,
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Cancel',
                                                style: TextStyle(
                                                  color: Color(0xff414ECA),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color(0xff414ECA),
                                            border: Border.all(
                                                color: Color(0xff6F7BEC),
                                                width: 1),
                                          ),
                                          height: 50,
                                          width: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Yes, Delete',
                                                style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 242, 245, 245),
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Image.asset(
                            'assets/images/more_vert.png',
                            width: 50,
                            height: 50,
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                  ),
                ),
                Text(
                  'Designers as Problem Solvers - \nIndustry Stories',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                    color: Color(0xff414eca),
                  ),
                )
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/prof1.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'James',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(65, 78, 202, 1),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'UI/UX Designer at google',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff404DC7),
                    border:
                        Border.all(color: const Color(0xff6F7BEC), width: 1),
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
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: const Color(0xff6F7BEC), width: 1),
                  ),
                  height: 35,
                  width: 120,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Designs',
                        style: TextStyle(
                          color: Color(0xff6F7BEC),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  '3 Days Ago',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff8b8b8b)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 5),
                ),
                Text(
                  'Designers are the ultimate problem solvers. They dont\njust create beautiful objects or user interfaces; they tackle\nchallenges faced by businesses, users, and society as a\nwhole. Here, we will delve into the world of design through\nreal-world stories that showcase this problem-solving\nspirit:',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8b8b8b),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      '1. Redesigning the Hospital Experience:',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Imagine a bustling hospital emergency room. Amidst the chaos, a designer observes the long wait times and patient frustration. They identify the problem: a confusing layout and lack of clear communication. Their solution? Redesigning the waiting area with clear signage, visual cues, and interactive displays. This not only reduces stress but also empowers patients to navigate the system more effectively.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E5E5E),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      '2. Making Education Accessible',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    ' In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E5E5E),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      '3. Sustainable Packaging Solutions: ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'A product designer witnesses the growing problem of plastic waste. They recognize the need for eco-friendly packaging alternatives. Their answer? Developing innovative packaging solutions made from recycled materials or even edible components.  This not only reduces environmental impact but also enhances brand image and consumer trust.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E5E5E),
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      '4. Redefining Urban Mobility: ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5E5E5E),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Traffic congestion and air pollution plague a major city. A transportation designer takes note. '
                    'They address the issue by creating user-friendly, electric bike-sharing systems. This not only promotes '
                    'sustainable transportation but also encourages healthier lifestyles and reduces reliance on cars.\n'
                    'These are just a few examples of how designers leverage their creativity, empathy, and technical skills '
                    'to tackle problems across various industries.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E5E5E),
                      height: 1.5,
                      fontWeight: FontWeight.w500,
                    ),
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
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'The Design Thinking Process: ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff5E5E5E),
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
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'These successful solutions often stem from a core design\nprinciple: design thinking. This human-centered approach\ninvolves:',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xff5E5E5E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' Empathizing: Understanding the needs and challenges\n    of the target audience.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xff5E5E5E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' Defining: Clearly outlining the problem that needs \n    solving.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xff5E5E5E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' Ideating: Brainstorming a wide range of creative \n    solutions.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xff5E5E5E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' Prototyping: Creating tangible representations of these \n    solutions.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Color(0xff5E5E5E),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const TextSpan(
                        text:
                            ' Testing: Gathering feedback from users to refine the \n    design.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'Through this iterative process, designers continuously \nimprove their solutions, ensuring they effectively address\nthe identified problem.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'Designers are more than just creators; they are strategic \nproblem solvers who have the power to make a positive \nimpact on the world. By understanding user needs,\nemploying design thinking, and constantly iterating, they\ncraft solutions that not only look good but also function\nwell and create a better future.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
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
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'comments (10)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff414ECA),
                  ),
                ),
                const SizedBox(
                  width: 210,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Comments(),
                        ));
                  },
                  child: Image.asset('assets/images/arrow_right_alt.png'),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/john.png'),
                ),
                const SizedBox(width: 10),
                const Text(
                  'John S',
                  style: TextStyle(
                      fontSize: 23,
                      color: Color(0xff414eca),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 230,
                ),
                Image.asset('assets/images/more_vert.png')
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'Great article! The story about redesigning the hospital ER really\nresonated with me. As someone who is been on both sides of that\nexperience, good design can truly make a difference in stressful\nsituations.  Would love to hear more stories about design in\nhealthcare!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  child: Image.asset('assets/images/love.png'),
                ),
                const Text(
                  '356',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
                const SizedBox(width: 40),
                const Text(
                  '1 day ago',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/john.png'),
                ),
                const SizedBox(width: 10),
                const Text(
                  'John S',
                  style: TextStyle(
                      fontSize: 23,
                      color: Color(0xff414eca),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 230,
                ),
                Image.asset('assets/images/more_vert.png')
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'Great article! The story about redesigning the hospital ER really\nresonated with me. As someone who is been on both sides of that\nexperience, good design can truly make a difference in stressful\nsituations.  Would love to hear more stories about design in\nhealthcare!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  child: Image.asset('assets/images/love.png'),
                ),
                const Text(
                  '356',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
                const SizedBox(width: 40),
                const Text(
                  '1 day ago',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/john.png'),
                ),
                const SizedBox(width: 10),
                const Text(
                  'John S',
                  style: TextStyle(
                      fontSize: 23,
                      color: Color(0xff414eca),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  width: 230,
                ),
                Image.asset('assets/images/more_vert.png')
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'Great article! The story about redesigning the hospital ER really\nresonated with me. As someone who is been on both sides of that\nexperience, good design can truly make a difference in stressful\nsituations.  Would love to hear more stories about design in\nhealthcare!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 40,
                  child: Image.asset('assets/images/love.png'),
                ),
                const Text(
                  '356',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
                const SizedBox(width: 40),
                const Text(
                  '1 day ago',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                const Text(
                  'More Articles Like This',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  width: 150,
                ),
                Image.asset('assets/images/arrow_right_alt.png')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Container(
                  height: 300,
                  width: 175,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 175,
                        width: 175,
                        child: Image.asset(
                          'assets/images/Article banner 7.png',
                          height: 175,
                          width: 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Text(
                          '10 tips for Boosting \n your Productivity ...',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff414ECA),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/prof1.png',
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'James Hok',
                            style: TextStyle(
                              color: Color(0xff414ECA),
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            '5 days ago',
                            style: TextStyle(
                              color: Color(0xff8B8B8B),
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                          Image.asset('assets/images/more_vert.png')
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  height: 300,
                  width: 175,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 175,
                        width: 175,
                        child: Image.asset(
                          'assets/images/Article banner 6.png',
                          height: 175,
                          width: 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        child: Text(
                          '10 tips for Boosting \n your Productivity ...',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff414ECA),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/prof1.png',
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            'James Hok',
                            style: TextStyle(
                              color: Color(0xff414ECA),
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            '5 days ago',
                            style: TextStyle(
                              color: Color(0xff8B8B8B),
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                            ),
                          ),
                          Image.asset('assets/images/more_vert.png')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset('assets/images/Icon25.png'),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              // Use Expanded to allow the comment box to take up available space
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a Comment',
                            hintStyle: TextStyle(
                              color: Color(0xff8b8b8b),
                            ),
                            border: InputBorder.none, // Removes the border
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          // Handle send button tap
                        },
                        child: Icon(
                          Icons.send, // Use the send icon from Material Icons
                          size: 25,
                          color:
                              Colors.blue, // You can change the color as needed
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
