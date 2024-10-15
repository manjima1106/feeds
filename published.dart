import 'package:flutter/material.dart';

class Published extends StatelessWidget {
  Published({Key? key}) : super(key: key);
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
              right: 190,
              top: 1,
            ),
            child: Text(
              'My Articles',
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
          Icon(
            Icons.more_vert,
          ),
          Padding(padding: EdgeInsets.all(7.0))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Draft(15)',
                  style: TextStyle(
                    color: Color(0xff6C6262),
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'Published(27)',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff414ECA),
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
                  color: const Color(0xff8B8B8B),
                ),
                const SizedBox(width: 0),
                Container(
                  height: 1,
                  width: 200,
                  color: const Color(0xff414ECA),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  height: 125,
                  width: 390,
                  child: Row(
                    children: [
                      Container(
                        width: 130,
                        height: 125,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Article banner 20.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Text(
                                  "10 Tips for Boosting Your \nProductivity ...",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Today',
                                      style: TextStyle(
                                        color: Color(0xff8B8B8B),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.app_registration,
                                          color: Color(0xff414ECA),
                                          size: 20,
                                        ),
                                        SizedBox(width: 20),
                                        Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
                                        ),
                                      ],
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
