import 'package:flutter/material.dart';
import 'package:palette_generator/widgets/navBar/bottom_nav_bar.dart';
import 'package:palette_generator/models/app_pages.dart';
import 'package:palette_generator/widgets/tabBar/homepage_app_bar.dart';
import 'package:palette_generator/widgets/tabBar/page_app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Palette Generator',
      theme: ThemeData(
        fontFamily: "Lexend",
        scaffoldBackgroundColor: Colors.grey[100],
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.grey[900]), // Primary text
          bodyMedium: TextStyle(color: Colors.grey[600]), // Secondary text
        ),
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  _getAppBar(int index) {
    if (index == 0) {
      return HomepageAppBar();
    } else {
      return PageAppBar(title: appPages[_selectedIndex].title);
    }
  }

  _updateIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: _getAppBar(_selectedIndex),
      body: appPages[_selectedIndex].pageBuilder(_updateIndex),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
