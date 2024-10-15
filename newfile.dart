import 'package:flutter/material.dart';
import 'package:mara/final.dart';

class Newfile extends StatelessWidget {
  Newfile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 20,
            color: Color(0xff260446),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 150,
              top: 1,
            ),
            child: Text(
              'Create Article',
              style: TextStyle(
                color: Color(0xff260446),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: SizedBox(
              width: 10,
            ),
          ),
          Icon(Icons.more_vert),
          Padding(
            padding: EdgeInsets.all(5.0),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 370,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/IMage.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 15,
                        right: 15,
                        child: Image.asset(
                          'assets/images/Edit Icon.png',
                          width: 50,
                          height: 50,
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
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Title',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                  ),
                  height: 60,
                  width: 410,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      Text(
                        'Designers as Problem Solvers - Industry Stories',
                        style: TextStyle(
                          color: Color(0xff414eca),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
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
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Article',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 400,
                  height: 1800,
                  color: const Color.fromRGBO(244, 244, 244, 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Image.asset('assets/images/format_align_left.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_align_center.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_align_right.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_align_justify.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_underlined.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_italic.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/format_size.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/palette.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/add_link.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Image.asset('assets/images/add_photo_alternate.png'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        ' Designers are the ultimate problem solvers.They \n dontjust create beautiful objects or user interfaces;\n they tackle challenges faced by businesses, users,\n and society as a whole. Here, we will delve into the \n world of design through real-world stories that\n showcase this problem-solving spirit:',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8b8b8b),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '1. Redesigning the Hospital Experience:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '2. Making Education Accessible',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'In a developing country, a designer encounters the issue of limited access to educational resources. They understand the challenge: geographically dispersed schools and a lack of technology. Their response? Designing low-cost, interactive learning tools that utilize local materials and can function offline. This empowers remote schools to deliver engaging education even with limited resources.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff5E5E5E),
                            height: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '3. Sustainable Packaging Solutions: ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        '4. Redefining Urban Mobility: ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'The Design Thinking Process: ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5E5E5E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'These successful solutions often stem from a core design\nprinciple: design thinking. This human-centered approach\ninvolves:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff5E5E5E),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
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
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                      ),
                      const Text(
                        'Through this iterative process, designers continuously \nimprove their solutions, ensuring they effectively address\nthe identified problem.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Conclusion',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Designers are more than just creators; they are \nstrategic problem solvers who have the power to \nmake a positive impact on the world. By \nunderstanding user needs, employing design \nthinking, and constantly iterating, they craft solutions\nthat not only look good but also function well and\ncreate a better future.',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff5E5E5E),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Select Topics',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                  ),
                  height: 60,
                  width: 410,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      Text(
                        'UI/UX Designing',
                        style: TextStyle(
                          color: Color(0xff414eca),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 240,
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.black,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Set Publishing Time',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                  ),
                  height: 60,
                  width: 410,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                      ),
                      Text(
                        '12:00 AM IST',
                        style: TextStyle(
                          color: Color(0xff414eca),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 260,
                      ),
                      Image(
                          image: AssetImage('assets/images/calendar_month.png'))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                Text(
                  'Allow Comments from the Community',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(244, 244, 244, 1),
                  ),
                  height: 60,
                  width: 410,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                      ),
                      Text(
                        'Yes',
                        style: TextStyle(
                          color: Color(0xff414eca),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 320,
                      ),
                      Image(image: AssetImage('assets/images/expand_more.png'))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffC0C5F7),
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xffC0C5F7), width: 1),
                  ),
                  height: 60,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Save as Draft',
                        style: TextStyle(
                          color: Color(0xff414eca),
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Final(),
                        ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff414eca),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xff414eca), width: 1),
                    ),
                    height: 60,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Publish Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
