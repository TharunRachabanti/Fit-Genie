import 'package:flutter/material.dart';
import 'package:fit_genie/screens/categories.dart';
import 'package:fit_genie/screens/home.dart';
import 'package:fit_genie/screens/myprofile.dart';
import 'package:fit_genie/screens/bag.dart';
import 'package:fit_genie/screens/3dmodel.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    const CategoriesScreen(key: Key('categories')),
    Vr3dScreen(),
    const BagScreen(key: Key('bag')),
    ProfileScreen()
  ];

  void _changeIndex(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _changeIndex,
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_outlined),
              label: "Categories",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: "3dVR",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "Bag",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined),
              label: "MyProfile",
            ),
          ],
        ),
      ),
    );
  }
}
