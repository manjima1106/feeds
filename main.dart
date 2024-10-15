import 'package:flutter/material.dart';
import 'package:mara/preference.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
      home: Scaffold(
        body: Container(
          child: Preference(),
        ),
      ),
    );
  }
}

class MediaQueryExample extends StatelessWidget {
  MediaQueryExample({super.key});

  Widget _buildSmallScreenLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.phone_android,
            size: 50,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'this is a small screen',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildLargeScreenLayout() {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.desktop_windows,
            size: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'this is a large screen',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildPortraitLayout() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.portrait,
            size: 50,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'portrait mode',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Widget _buildLandscapeScreenLayout() {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.landscape,
            size: 50,
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'landscape mode',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Example'),
      ),
      body: screenWidth < 600
          ? _buildSmallScreenLayout()
          : _buildLargeScreenLayout(),
    );
  }
}
