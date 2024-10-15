import 'package:flutter/material.dart';
import 'package:mara/discarticle.dart';
import 'package:mara/explore.dart';
import 'package:mara/newarticles.dart';
import 'package:mara/popular.dart';
import 'package:mara/recomendations.dart';
import 'package:mara/search.dart';
import 'package:mara/topwriters.dart';

class Discover extends StatelessWidget {
  Discover({Key? key}) : super(key: key);
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
              padding: const EdgeInsets.only(right: 1),
              child: Image.asset(
                'assets/images/ShareInfo Blue 1.png',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 25),
              child: const Text(
                'Discover',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3A0070)),
              ),
            ),
            const SizedBox(
              width: 130,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: Image.asset('assets/images/search.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Popular(),
                        ));
                  },
                  child: Container(
                    child: Image.asset('assets/images/style.png'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 5,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 237, 234, 234),
                  ),
                  height: 50,
                  width: 380,
                  child: Row(
                    children: [
                      const Icon(Icons.search),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Search(),
                              ));
                        },
                        child: const Text(
                          'Search feeds or writers here...',
                          style: TextStyle(
                            color: Color(0xff8B8B8B),
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                const Text(
                  'Most Popular',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3A0070)),
                ),
                const SizedBox(
                  width: 245,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Popular(),
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount:
                    10, // Set the number of items you want to display or use 'null' for infinite scroll
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      const SizedBox(width: 20), // Padding between items
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
                                index % 2 == 0
                                    ? 'assets/images/Article banner 7.png'
                                    : 'assets/images/Article banner 6.png',
                                height: 175,
                                width: 175,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
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
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                const Text(
                  'Explore by Topics',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3A0070)),
                ),
                const SizedBox(
                  width: 221,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20), // Maintain right spacing
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Explore(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Add left and right padding
                child: Row(
                  children: [
                    // First item
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/ai.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    // Second item
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                    // More items can be added using a loop
                    Container(
                      height: 100,
                      width: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/datasci.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                ),
                const Text(
                  'Top Writers',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3A0070),
                  ),
                ),
                const SizedBox(
                  width: 268,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Topwriters(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 1100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Ronald',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 1),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Theresa',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/natasya.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Natasya',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/alfrad.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Alfrad',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Raheedi',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mike',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mike',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mike',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mike',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          width: 50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/ronald.png',
                                fit: BoxFit.cover,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Mike',
                                style: TextStyle(
                                    color: Color.fromRGBO(58, 0, 112, 1),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Left and right padding of 20
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align items to the start
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Distribute space between items
                    children: [
                      const Text(
                        'Our Recommendations',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3A0070),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Recomendations(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                              left: index == 0
                                  ? 0
                                  : 20), // Only apply padding to items after the first one
                          child: Container(
                            height: 260,
                            width: 175,
                            color: Colors.white,
                            child: Column(
                              children: [
                                Container(
                                  height: 175,
                                  width: 175,
                                  child: Image.asset(
                                    index % 2 == 0
                                        ? 'assets/images/Article banner 7.png'
                                        : 'assets/images/Article banner 6.png',
                                    height: 175,
                                    width: 175,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Row(
                                  children: [
                                    Text(
                                      '10 tips for Boosting \n your Productivity ...',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png'),
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
                                    const SizedBox(width: 5),
                                    Image.asset('assets/images/more_vert.png'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                ),
                const Text(
                  'New Articles',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff3A0070),
                  ),
                ),
                const SizedBox(
                  width: 250,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Newarticles(),
                        ));
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [],
                    ),
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Article banner 7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "10 tips for Boosting your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png',
                                        width: 20),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'James Hok',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '3 Days Ago',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bookmark,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Discarticle(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [],
                    ),
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Article banner 7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "10 tips for Boosting your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png',
                                        width: 20),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'James Hok',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '3 Days Ago',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bookmark,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Discarticle(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [],
                    ),
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Article banner 7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "10 tips for Boosting your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png',
                                        width: 20),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'James Hok',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '3 Days Ago',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bookmark,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Discarticle(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [],
                    ),
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Article banner 7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "10 tips for Boosting your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png',
                                        width: 20),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'James Hok',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '3 Days Ago',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bookmark,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Discarticle(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(
              height: 10,
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [],
                    ),
                    height: 125,
                    width: 370,
                    child: Row(
                      children: [
                        Container(
                          width: 125,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Article banner 7.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "10 tips for Boosting your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset('assets/images/prof1.png',
                                        width: 20),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'James Hok',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff414ECA),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '3 Days Ago',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.bookmark,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Discarticle(),
                                              ),
                                            );
                                          },
                                          child: const Icon(
                                            Icons.more_vert,
                                            size: 20,
                                            color: Color(0xff8B8B8B),
                                          ),
                                        ),
                                      ],
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
