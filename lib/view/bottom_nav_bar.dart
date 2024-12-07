import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:senior_project_mobile/view/account_page.dart';
import 'package:senior_project_mobile/view/favourites_page.dart';
import 'package:senior_project_mobile/view/home_page_view.dart';
import 'package:senior_project_mobile/view/search_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var _bottomNavIndex = 0;
  void _onTap(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navBarSayfalari._pages[_bottomNavIndex], // Seçilen sayfayı göster
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffEF2A39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), // Yuvarlak yapar
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: const Color(0xffEF2A39),
        icons: navBarIcons.iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: _onTap,
      ),
    );
  }
}

class navBarSayfalari {
  static final List<Widget> _pages = [
    const HomePageView(),
    const SearchPage(),
    const FavouritesPage(),
    const AccountPage(),
  ];
}

class navBarIcons {
  static final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.heart_broken_outlined,
    Icons.account_balance,
  ];
}