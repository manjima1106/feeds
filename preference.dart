import 'package:flutter/material.dart';
import 'package:mara/selection.dart';

class Preference extends StatelessWidget {
  const Preference({super.key});

  double _getResponsiveFontSize(BuildContext context, double factor) {
    final screenWidth = MediaQuery.of(context).size.width;
    return factor * (screenWidth / 375);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          toolbarHeight: 64,
          elevation: 0,
          leading:
              const Icon(Icons.arrow_back, size: 30, color: Color(0xff260446)),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.6),
              child: const Text(
                'Preferences',
                style: TextStyle(
                  color: Color(0xff260446),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select your topic of Interest🔖',
                  style: TextStyle(
                    color: Color(0xff414ECA),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Select your topic of interest for better recommendations, or you can skip it',
                  style: TextStyle(
                    color: Color(0xff414ECA),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 25),
                Wrap(
                  spacing: 5,
                  runSpacing: 10,
                  children: [
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('System Design'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Graph Algorithms'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('Software Development Life Cycle (SDLC)'),
                    _buildTopicButton('AI'),
                    _buildTopicButton('Graph Algorithms'),
                    _buildTopicButton('OOP'),
                    _buildTopicButton('Data Structures & Algorithms (DSA)'),
                    _buildTopicButton('Communication Skills'),
                    _buildTopicButton('Software Architecture'),
                  ],
                ),
              ],
            ),
          ),
        ),
        persistentFooterButtons: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.03,
              bottom: screenHeight * 0.04,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xffC5CAFA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.35,
                    child: const Center(
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff414ECA),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Selection(),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: const Color(0xff414ECA),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.45,
                    child: const Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopicButton(String label) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(color: Color(0xff6F7BEC)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xff6F7BEC),
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
