import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  Comments({Key? key}) : super(key: key);
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              right: 150,
              top: 1,
            ),
            child: Text(
              'Comments (120)',
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
          Icon(Icons.search),
          Padding(padding: EdgeInsets.all(5.0))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xff414ECA),
                    border:
                        Border.all(color: const Color(0xff6F7BEC), width: 1),
                  ),
                  height: 50,
                  width: 120,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Top',
                        style: TextStyle(
                          color: Color.fromARGB(255, 217, 219, 235),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            color: const Color(0xff6F7BEC), width: 1),
                      ),
                      height: 50,
                      width: 120,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Newest',
                            style: TextStyle(
                              color: Color(0xff6F7BEC),
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: const Color(0xff6F7BEC), width: 1),
                          ),
                          height: 50,
                          width: 120,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Oldest',
                                style: TextStyle(
                                  color: Color(0xff6F7BEC),
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
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
            const SizedBox(
              height: 10,
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/images/Icon25.png'),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 221, 221),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Add a Comment',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff8b8b8b),
                          ),
                        ),
                      ),
                      const SizedBox(width: 110),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/images/sendblue.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                ),
                Text(
                  'experience, good design can truly make a difference in stressful \nsituations.  Would love to hear more stories about design in \nhealthcare!',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5E5E5E),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
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
          ],
        ),
      ),
    );
  }
}
