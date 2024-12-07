
import 'package:flutter/material.dart';

// Sayfa 1 - HomePage
class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final List<String> imageUrls = [
    'assets/mercedes-x-class.jpg',
    'assets/3-serisi-bmw.png',
    'assets/e-serisi.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color(0xffEF2A39),
        title: const Text('Anasayfa'),
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
                  ilanCardYapisi('İlan Ara', 'İhtiyacına göre ilanı hemen ara'),
                  ilanCardYapisi('İlan Ver', 'İlan vermek için tıkla'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Önerilen İlanlar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  onerilenIlanlarCard(),
                  onerilenIlanlarCard(),
                  onerilenIlanlarCard(),
                  onerilenIlanlarCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card ustBannerCard() {
    return Card(
            elevation: 5, // Kartın gölgesi
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), // Kart köşe yuvarlama
            ),
            child: SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
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

  SizedBox onerilenIlanlarCard() {
    return SizedBox(
      height: 197,
      width: 154,
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Image.asset(
              'assets/e-serisi.png',
            ),
          const Text('İlan Basligi'),
          const Text('ilan aciklamasi'),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Spacer(),
          ),
          const Text('ilan fiyati')
          ],
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

  SizedBox customSizedBox() => const SizedBox(height: 10);
}
