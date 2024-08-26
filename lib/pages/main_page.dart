import 'package:flutter/material.dart';
import 'package:smart_home/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan
  final List<Widget> _pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: const Color(0XFF211D1D),
        selectedItemColor: const Color(0XFFFFB267),
        unselectedItemColor: const Color(0XFFF8F8F8),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic/home.png'),
              size: 24,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic/search.png'),
              size: 24,
            ),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic/grid.png'),
              size: 24,
            ),
            label: 'grid',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/ic/profile.png'),
              size: 24,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
