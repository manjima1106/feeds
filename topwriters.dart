import 'package:flutter/material.dart';
import 'package:mara/twopened.dart';

class Topwriters extends StatefulWidget {
  Topwriters({Key? key}) : super(key: key);

  @override
  _TopwritersState createState() => _TopwritersState();
}

class _TopwritersState extends State<Topwriters> {
  List<bool> isFollowing = [];

  final List<Map<String, String>> writers = [
    {
      'rank': '01',
      'name': 'James',
      'designation': 'UI/UX Designer at Google',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '02',
      'name': 'Alice',
      'designation': 'UI/UX Designer at Apple',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    {
      'rank': '03',
      'name': 'Bob',
      'designation': 'UI/UX Designer at Microsoft',
      'image': 'assets/images/prof1.png',
    },
    // Add more writers here
  ];

  @override
  void initState() {
    super.initState();
    isFollowing = List<bool>.filled(writers.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64, // Fixed height for the AppBar
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
        title: const Padding(
          padding: EdgeInsets.only(left: 1),
          child: Text(
            'Top Writers',
            style: TextStyle(
              color: Color(0xff260446),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          const Icon(Icons.search),
          const Padding(padding: EdgeInsets.all(4.0)),
        ],
      ),
      body: ListView.builder(
        itemCount: writers.length,
        itemBuilder: (context, index) {
          final writer = writers[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
            child: Container(
              width: double.infinity,
              height: 80, // Fixed height for the container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 235, 231, 231)
                        .withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            writer['rank']!,
                            style: const TextStyle(
                              fontSize: 16, // Fixed font size
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          writer['image']!,
                          width: 40, // Fixed image size
                          height: 40,
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              if (index == 0) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Twopened(),
                                  ),
                                );
                              }
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  writer['name']!,
                                  style: const TextStyle(
                                    fontSize: 18, // Fixed font size
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(65, 78, 202, 1),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  writer['designation']!,
                                  style: const TextStyle(
                                    fontSize: 16, // Fixed font size
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFollowing[index] = !isFollowing[index];
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 5),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15),
                        color: isFollowing[index]
                            ? Colors.transparent
                            : const Color(0xff404DC7),
                        border: Border.all(
                          color: const Color(0xff6F7BEC),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        isFollowing[index] ? 'Following' : 'Follow',
                        style: TextStyle(
                          fontSize: 16, // Fixed font size
                          fontWeight: FontWeight.bold,
                          color: isFollowing[index]
                              ? const Color.fromRGBO(65, 78, 202, 1)
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Text("This is the next screen"),
      ),
    );
  }
}
