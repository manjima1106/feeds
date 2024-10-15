import 'package:flutter/material.dart';

class Ai extends StatefulWidget {
  Ai({Key? key}) : super(key: key);

  @override
  _AiState createState() => _AiState();
}

class _AiState extends State<Ai> {
  List<bool> isBookmarked =
      List.generate(7, (index) => false); // List to track bookmark states

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;

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
          Padding(
            padding: EdgeInsets.only(right: isSmallScreen ? 50 : 150, top: 1),
            child: Text(
              'Artificial Intelligence',
              style: TextStyle(
                color: const Color(0xff260446),
                fontSize: isSmallScreen ? 16 : 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.search),
          const Padding(padding: EdgeInsets.all(1.0)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/artifi.png',
                      fit: BoxFit.cover,
                      width: screenWidth * 0.9,
                      height: screenWidth * 0.2,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  const Text(
                    'Sort by',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3A0070),
                    ),
                  ),
                  const SizedBox(width: 100),
                  const Text(
                    'Most Popular',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8B8B8B),
                    ),
                  ),
                  const SizedBox(width: 10),
                  DropdownButton<String>(
                    icon: const Icon(
                      Icons.swap_vert,
                      color: Color(0xff414ECA),
                    ),
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                        value: 'option1',
                        child: Text('Most popular'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'option2',
                        child: Text('Least popular'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'option3',
                        child: Text('Sort by date'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'option4',
                        child: Text('Sort by view'),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      print('Selected: $newValue');
                    },
                    underline: const SizedBox(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      width: screenWidth * 0.5,
                      child: Row(
                        children: [
                          Container(
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/Article banner ${index + 20}.png',
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
                                  Text(
                                    "10 tips for Boosting your \n Productivity ...",
                                    style: TextStyle(
                                      fontSize: isSmallScreen ? 14 : 16,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff414ECA),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: Row(
                                      children: [
                                        const Text(
                                          '5 Days Ago',
                                          style: TextStyle(
                                            color: Color(0xff8B8B8B),
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          icon: Icon(
                                            isBookmarked[index]
                                                ? Icons.bookmark
                                                : Icons.bookmark_border,
                                            color: const Color(0xff414ECA),
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              isBookmarked[index] =
                                                  !isBookmarked[index];
                                            });
                                          },
                                          iconSize: 20,
                                        ),
                                        const SizedBox(width: 20),
                                        const Icon(
                                          Icons.more_vert,
                                          size: 20,
                                          color: Color(0xff8B8B8B),
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
