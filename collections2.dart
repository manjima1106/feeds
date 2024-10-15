import 'package:flutter/material.dart';

class Collections2 extends StatelessWidget {
  Collections2({Key? key}) : super(key: key);

  final List<Map<String, String>> articles = [
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 20.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 21.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 21.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 21.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 21.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    {
      'title': "10 tips for Boosting your Productivity ...",
      'image': 'assets/images/Article banner 21.png',
      'author': 'James Hok',
      'date': '3 Days Ago',
    },
    // Add more articles as needed
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

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
          const Padding(
            padding: EdgeInsets.only(
              right: 190,
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
          const SizedBox(width: 10),
          Icon(Icons.search),
          const Padding(padding: EdgeInsets.all(4.0)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20), // Add horizontal padding
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Text(
                    '12 Articles',
                    style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                Spacer(), // Use Spacer to fill space between text and icons
                Container(
                  child: Icon(
                    Icons.apps,
                    color: Color(0xff414ECA),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  child: Icon(
                    Icons.list_alt,
                    color: Color(0xff8b8b8b),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  final article = articles[index];
                  return Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: screenHeight * 0.15,
                    width: double.infinity, // Use double.infinity for width
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          width: screenWidth * 0.3,
                          height: screenHeight * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              article['image']!,
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
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: screenWidth * 0.1),
                                  child: Text(
                                    article['title']!,
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff414ECA),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: screenWidth * 0.1, top: 10),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/prof1.png',
                                        width: 20,
                                      ),
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
                                      Spacer(), // Use Spacer to push icons to the end
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
