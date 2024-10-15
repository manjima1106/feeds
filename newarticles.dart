import 'package:flutter/material.dart';

class Newarticles extends StatelessWidget {
  Newarticles({Key? key}) : super(key: key);

  final List<Map<String, String>> articles = [
    {
      'image': 'assets/images/Article banner 20.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'image': 'assets/images/Article banner 21.png',
      'title': '10 tips for Boosting your \nProductivity ...',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
  ];

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
              right: 200,
              top: 1,
            ),
            child: Text(
              'New Articles',
              style: TextStyle(
                color: Color(0xff260446),
                fontSize: 20,
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
          Padding(padding: EdgeInsets.all(4.0))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                height: 125,
                child: Row(
                  children: [
                    Container(
                      width: 105,
                      height: 105,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          article['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              article['title']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff414ECA),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/prof1.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  article['author']!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff414ECA),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Row(
                                children: [
                                  Text(
                                    '3 Days Ago',
                                    style: TextStyle(
                                      color: Color(0xff8B8B8B),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.bookmark,
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
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
