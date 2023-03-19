import 'package:flutter/material.dart';
import 'package:task_app/view/favorite/favorite_screen.dart';
import 'package:task_app/view/home/home_screen.dart';
import 'package:task_app/view/person/person_screen.dart';
import 'package:task_app/view/star/star_screen.dart';
import 'package:task_app/view/stats/stats_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({Key? key}) : super(key: key);

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;
  List<Widget> screens = <Widget>[
    const HomeScreen(),
    const StatsScreen(),
    const StarScreen(),
    const FavoriteScreen(),
    const PersonScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 78, 66, 110),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.query_stats), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.star_outline), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ""),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        iconSize: 25,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
