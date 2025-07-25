
import 'package:flutter/material.dart';

void main() {
  runApp(QuranScienceExplorer());
}

class QuranScienceExplorer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran Science Explorer',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.auto_stories_rounded, size: 80, color: Colors.greenAccent),
            SizedBox(height: 20),
            Text(
              'Quran Science Explorer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.greenAccent),
            ),
            SizedBox(height: 10),
            Text(
              'Powered by Ak\'s-Yasir',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quran Science Explorer'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('🌌 Explore Quran & Science'),
            SizedBox(height: 20),
            Text(
              'Ak\'s-Yasir',
              style: TextStyle(fontSize: 18, color: Colors.greenAccent),
            ),
            SizedBox(height: 40),
            Text(
              'Crafted in India',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
