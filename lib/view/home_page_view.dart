
import 'package:flutter/material.dart';
import 'package:senior_project_mobile/constants/image_urls.dart';
import 'package:senior_project_mobile/constants/text_strings.dart';

// Sayfa 1 - HomePage
class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
   int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color(0xffEF2A39),
        title: const Text(TextStrings.appBarTitle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            appLogo(),
            customSizedBox(),
            ustBannerCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ilanCardYapisi(TextStrings.ilanAraTitle, TextStrings.ilanAraText),
                  ilanCardYapisi(TextStrings.ilanVerTitle, TextStrings.ilanVerText),
                ],
              ),
            ),
            onerilenIlanlarTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  onerilenIlanlarCard(),
                  const SizedBox(width: 10),
                  onerilenIlanlarCard(),
                  const SizedBox(width: 10),
                  onerilenIlanlarCard(),
                  const SizedBox(width: 10),
                  onerilenIlanlarCard(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70, // FAB genişliği
        height: 70, // FAB yüksekliği
        decoration:const BoxDecoration(
          color: Colors.transparent, // Yuvarlak kısımdan renk kaldırıldı
          shape: BoxShape.circle,
          boxShadow:  [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {
              // FAB tıklama olayları buraya yazılabilir
            },
            backgroundColor: Colors.red, // FAB'in kendisinin rengi
            child: const Icon(Icons.add),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
      
  }

  
  Padding appLogo() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 5),
            child: Image.asset('assets/takkas-logo.png'),
          );
  }

  SizedBox customSizedBox() => const SizedBox(height: 10);

  Card ustBannerCard() {
    return Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), 
            ),
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: BannerCardUrls.imageUrls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      BannerCardUrls.imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          );
  }

  Card ilanCardYapisi(String cardTitle, String cardText) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          SizedBox(
            width: 183,
            height: 86,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    cardTitle,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(cardText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding onerilenIlanlarTitle() {
    return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  TextStrings.onerilenIlanlarTitle,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          );
  }
  SizedBox onerilenIlanlarCard() {
    return SizedBox(
      height: 197,
      width: 154,
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Image.asset(
              OnerilenIlanCardUrls.onerilenIlanImageUrl,
            ),
          const Text(TextStrings.ilanBasligiText),
          const Text(TextStrings.ilanAciklamasiText),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Expanded(child: Container())
          ),
          const Text(TextStrings.ilanFiyatiText)
          ],
        ),
      ),
    );
  }
}



