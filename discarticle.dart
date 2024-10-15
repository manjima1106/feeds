import 'package:flutter/material.dart';

class Article {
  final String title;
  final String date;
  final String imagePath;

  Article({required this.title, required this.date, required this.imagePath});
}

class Discarticle extends StatefulWidget {
  Discarticle({Key? key}) : super(key: key);

  @override
  _DiscarticleState createState() => _DiscarticleState();
}

class _DiscarticleState extends State<Discarticle>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;

  final List<Article> draftArticles = [
    Article(
      title: "10 Tips for Boosting Your Productivity ...",
      date: "Today",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Another Draft Article Title ...",
      date: "Yesterday",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "A Third Draft Article Title ...",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
  ];

  final List<Article> publishedArticles = [
    Article(
      title: "Published Article 1",
      date: "Last Month",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Published Article 2",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Published Article 2",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Published Article 2",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Published Article 2",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
    Article(
      title: "Published Article 2",
      date: "Last Week",
      imagePath: 'assets/images/Article banner 20.png',
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController();

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.jumpToPage(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _pageController.dispose();
    super.dispose();
  }

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
        title: const Text(
          'My Articles',
          style: TextStyle(
            color: Color(0xff260446),
            fontSize: 22, // Fixed font size
            fontWeight: FontWeight.w700,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(64.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: const Color(0xff414ECA),
                  indicatorSize: TabBarIndicatorSize.tab,
                  onTap: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  tabs: const [
                    Tab(text: 'Drafts'),
                    Tab(text: 'Published'),
                  ],
                ),
              ),
              const SizedBox(height: 16), // Add vertical space below the tabs
            ],
          ),
        ),
        actions: [
          const Icon(
            Icons.more_vert,
          ),
          const Padding(padding: EdgeInsets.all(7.0)),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _tabController.index = index;
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: _buildArticleList(draftArticles),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: _buildArticleList(publishedArticles),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildArticleList(List<Article> articles) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return ArticleCard(
          article: article,
        );
      },
    );
  }
}

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      height: 125, // Fixed height
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 130, // Fixed width
            height: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                article.imagePath,
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
                        fontSize: 16, // Fixed font size
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA),
                      ),
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
                            fontSize: 15, // Fixed font size
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Row(
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
    );
  }
}
