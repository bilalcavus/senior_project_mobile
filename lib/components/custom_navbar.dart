import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color.fromARGB(255, 234, 236, 243),
      currentIndex: selectedIndex,
      onTap: (int index) {
        onItemTapped(index);
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, "/homePage");
            break;
          case 1:
            Navigator.pushReplacementNamed(context, "/searchPage");
            break;
          case 2:
            Navigator.pushReplacementNamed(context, "/favouritesPage");
            break;
          case 3:
            Navigator.pushReplacementNamed(context, "/accountPage");
            break;
        }
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          label: 'Anasayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.search_normal),
          label: 'İlan Ara',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.heart),
          label: 'Favoriler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.user),
          label: 'Hesabım',
        ),
      ],
    );
  }
}