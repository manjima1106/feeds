import 'package:flutter/material.dart';
import 'package:mara/feeds.dart';

class Selection extends StatelessWidget {
  Selection({Key? key}) : super(key: key);

  static const Color primaryColor = Color(0xff414ECA);
  static const Color accentColor = Color(0xffEE5602);
  static const Color secondaryColor = Color(0xff8B8B8B);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;
    final double height = screenSize.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: height * 0.1, // Responsive height
        backgroundColor: Colors.white,
        title: const Text(
          'Welcome',
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0, // No shadow
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: height * 0.1, // Adjusted for responsiveness
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/gif1.gif',
                        height: height * 0.2,
                        width: width * 0.6,
                      ),
                    ],
                  ),
                ),
                const Text(
                  'You’re all Set to Go!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
                SizedBox(height: height * 0.01),
                const Text(
                  'Now You Can Explore',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Feeds by ShareInfo',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: accentColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'for',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: primaryColor,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'FREE',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Feeds(),
                ),
              );
            },
            child: Container(
              width: width * 0.8,
              height: height * 0.07,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: primaryColor,
                border: Border.all(color: const Color(0xff6F7BEC), width: 1),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Color.fromARGB(255, 242, 245, 245),
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.05),
        ],
      ),
    );
  }
}
