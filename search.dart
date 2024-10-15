import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: screenHeight * 0.08, // Responsive height
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
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.03,
            vertical: screenHeight * 0.01,
          ),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(217, 217, 217, 0.50),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Row(
            children: [
              Icon(Icons.search, color: Color(0xff8B8B8B)),
              SizedBox(width: 10),
              Text(
                'search something here..! ',
                style: TextStyle(
                    color: Color(0xff8B8B8B),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(screenWidth * 0.03),
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15),
              ),
              Text(
                '0 found',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
              ),
              Image.asset(
                'assets/images/gif2.gif',
                width: 300,
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not Found',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.01),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sorry, the keyword you entered cannot be found. \nPlease check again or search with another',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'keyword',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
