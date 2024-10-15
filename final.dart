import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  Final({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.1, // Responsive height
        backgroundColor: Colors.white,
        title: const Text(
          'Publishing Success',
          style: TextStyle(
            color: Color(0xff414ECA),
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0, // No shadow
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, top: screenHeight * 0.1),
              child: Image.asset('assets/images/gif3.gif'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: const Text(
                'SUCCESSFULLY \n    PUBLISHED',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff414ECA)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              child: const Text(
                'We’ve Added',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff414ECA)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              child: const Text(
                '20 Credits',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffEE5602)),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'in Your',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'ShareInfo',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffEE5602)),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Wallet',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA)),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Frame 48095738.png',
                    width:
                        screenWidth * 0.2, // Adjust size based on screen width
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  const Text(
                    'Share your Article',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff414ECA)),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xff414ECA),
                  border: Border.all(color: const Color(0xff6F7BEC), width: 1),
                ),
                height: screenHeight * 0.05, // Height based on screen size
                width: screenWidth * 0.7, // Width based on screen size
                child: const Center(
                  child: Text(
                    'Explore ShareInfo Wallet',
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 245, 245),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
