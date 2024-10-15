import 'package:flutter/material.dart';
import 'package:mara/ai.dart';

class Explore extends StatelessWidget {
  Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen width
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth =
        screenWidth * 0.9; // Set container width based on screen size

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
              'Explore Topics',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Ai(),
                                ));
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/ai.png',
                              height: 150,
                              width:
                                  screenWidth * 0.4, // Make images responsive
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4, // Make images responsive
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: containerWidth,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
                        ),
                        Image.asset(
                          'assets/images/datasci.png',
                          height: 150,
                          width: screenWidth * 0.4,
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
    );
  }
}
