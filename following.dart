import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  Following({Key? key}) : super(key: key);

  @override
  _FollowingState createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  List<bool> isFollowing = List.generate(12, (index) => false);
  List<String> userNames = [
    'Emma',
    'Alice',
    'Bob',
    'Charlie',
    'David',
    'Eve',
    'Frank',
    'Grace',
    'Hannah',
    'Ian',
    'Judy',
    'Karl'
  ];
  @override
  Widget build(BuildContext context) {
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
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Followers'),
              Tab(text: 'Following'),
            ],
            labelColor: Color(0xff414eca),
            unselectedLabelColor: Colors.grey,
          ),
          actions: const [
            Icon(Icons.search, color: Color(0xff414eca)),
            Padding(
              padding: EdgeInsets.all(8.0),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            buildUserListView(isFollowingTab: false),
            buildUserListView(isFollowingTab: true),
          ],
        ),
      ),
    );
  }

  Widget buildUserListView({required bool isFollowingTab}) {
    return ListView.builder(
      itemCount: isFollowing.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/prof1.png',
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userNames[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(65, 78, 202, 1),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'UI/UX Designer at Google',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
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
                      isFollowing[index]
                          ? (isFollowingTab ? 'Follow' : 'Following')
                          : (isFollowingTab ? 'Unfollow' : 'Follow'),
                      style: TextStyle(
                        fontSize: 16,
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
    );
  }
}
