import 'package:flutter/material.dart';
import 'package:mara/following.dart';

class Article {
  final String title;
  final String date;
  final String imageUrl;

  Article({required this.title, required this.date, required this.imageUrl});
}

class Twopened extends StatelessWidget {
  Twopened({Key? key}) : super(key: key);

  final List<Article> articles = [
    Article(
      title: "10 Tips for Boosting Your Productivity ...",
      date: "5 Days Ago",
      imageUrl: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "10 Tips for Boosting Your Productivity ...",
      date: "5 Days Ago",
      imageUrl: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "10 Tips for Boosting Your Productivity ...",
      date: "5 Days Ago",
      imageUrl: 'assets/images/Article banner 20.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.share,
                    size: 24,
                    color: Colors.black,
                  ),
                  SizedBox(width: 2),
                  Icon(
                    Icons.more_vert,
                    size: 28,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeader(),
              const SizedBox(height: 30),
              _buildDivider(),
              const SizedBox(height: 20),
              _buildStats(context),
              const SizedBox(height: 10),
              _buildDivider(),
              const SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const TabBar(
                      indicatorColor: Color(0xff414ECA),
                      tabs: [
                        Tab(text: "Articles"),
                        Tab(text: "About"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          _buildArticlesList(),
                          _buildAboutSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/prof1.png'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'James Hok',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff414ECA),
                  ),
                ),
                Text(
                  'UI/UX Designer at Google',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff6C6262),
                  ),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff414ECA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            'Follow',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildArticlesList() {
    return ListView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            _buildArticleItem(context, articles[index]),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }

  Widget _buildArticleItem(BuildContext context, Article article) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 125,
      width: screenWidth * 0.9,
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
                article.imageUrl,
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
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      article.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article.date,
                          style: const TextStyle(
                            color: Color(0xff8B8B8B),
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Row(
                          children: [
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
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
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Flexible(
                child: Text(
                  'A UI/UX designer is the mastermind behind the scenes of the digital products you use every day, ensuring they are not only visually appealing but also functional and enjoyable to use. They bridge the gap between the technical aspects and the user experience, considering both the aesthetics and the usability.',
                  style: TextStyle(
                    color: Color(0xff8B8B8B),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
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
          const SizedBox(height: 10),
          _buildSocialMediaRow('assets/images/Linkedin.png', 'Linkedin'),
          _buildSocialMediaRow('assets/images/Github.png', 'Github'),
          _buildSocialMediaRow('assets/images/Social.png', 'Behance'),
          const SizedBox(height: 15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
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
          const SizedBox(height: 10),
          _buildSocialMediaRow('assets/images/Linkedin.png', 'Linkedin'),
          _buildSocialMediaRow('assets/images/Github.png', 'Github'),
          _buildSocialMediaRow('assets/images/Social.png', 'Behance'),
        ],
      ),
    );
  }

  Widget _buildSocialMediaRow(String imageUrl, String platform) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(imageUrl, width: 24, height: 24),
          const SizedBox(width: 10),
          Text(
            platform,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStats(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          children: [
            Text(
              '1K',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff414ECA),
              ),
            ),
            Text(
              'Followers',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff8B8B8B),
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Following()),
            );
          },
          child: const Column(
            children: [
              Text(
                '1.2K',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff414ECA),
                ),
              ),
              Text(
                'Following',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff8B8B8B),
                ),
              ),
            ],
          ),
        ),
        const Column(
          children: [
            Text(
              '50',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xff414ECA),
              ),
            ),
            Text(
              'Articles',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff8B8B8B),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 360,
          color: Colors.grey,
        ),
      ],
    );
  }
}
