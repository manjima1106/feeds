import 'package:flutter/material.dart';
import 'package:mara/collections2.dart';

class Collections1 extends StatelessWidget {
  const Collections1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Colors.white,
        elevation: 0,
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
              right: 180,
              top: 1,
            ),
            child: Text(
              'My Bookmarks',
              style: TextStyle(
                color: Color(0xff260446),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: SizedBox(
              width: 1,
            ),
          ),
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 20))
        ],
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
                  const Text(
                    '12 Articles',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    width: 210,
                  ),
                  const Icon(
                    Icons.apps,
                    size: 30,
                    color: Color(0xff414ECA),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  Collections2(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.list_alt,
                      size: 30,
                      color: Color(0xff8B8B8B),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 16.png',
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 175,
                          width: 175,
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Article banner 17.png',
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            Image.asset(
                              'assets/images/prof1.png',
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            // ignore: avoid_unnecessary_containers
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
                  SizedBox(
                    height: 260,
                    width: 175,
                    child: Column(
                      children: [
                        SizedBox(
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
                            Image.asset(
                              'assets/images/prof1.png',
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
            ],
          ),
        ),
      ),
    );
  }
}
