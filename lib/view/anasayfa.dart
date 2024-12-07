import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75,vertical: 5),
            child: Image.asset('assets/takkas-logo.png'),
          ),
          customSizedBox(),
          Card(
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
          ),
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
          const Text('Önerilen İlanlar'),
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
          )
        ],
      ),
    );
  }

  SizedBox onerilenIlanlarCard() {
    return SizedBox(
                height: 250,
                width: 200,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset('assets/e-serisi.png',),
                  ),
                ),
              );
  }

  Card ilanCardYapisi(String cardTitle, String cardText ) {
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
                        child: Text(cardTitle, style: const TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(cardText),
                      )
                    ],
                  ),
                ),
            ],
          ),
          );
  }

  SizedBox customSizedBox() => const SizedBox(height: 20,);
}
