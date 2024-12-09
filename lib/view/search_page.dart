import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:senior_project_mobile/components/custom_appbar.dart';
import 'package:senior_project_mobile/components/custom_navbar.dart';
import 'package:senior_project_mobile/constants/text_strings.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar().customAppBar(TextStrings.searchAppBarTitle),
      body: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (text){
              },
              decoration:  InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                focusedBorder:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
                hintText: TextStrings.searchBarHintText,
                prefixIcon: const Icon(Iconsax.search_status),
                border: const OutlineInputBorder()
              ),
            ),
            ),
            IlanAramaCards()
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 1, onItemTapped: (p0) {
      },),
    );
  }

  Column IlanAramaCards() {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ilanAramaCard("Emlak","Lorem ipsum dolor sit amet"),
                    ilanAramaCard("Otomobil","Lorem ipsum dolor sit amet"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ilanAramaCard("Motosiklet","Lorem ipsum dolor sit amet"),
                    ilanAramaCard("Arazi SUV Pick-Up","Lorem ipsum dolor sit amet")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ilanAramaCard("Elektrikli Araçlar","Lorem ipsum dolor sit amet"),
                    ilanAramaCard("Karavan","Lorem ipsum dolor sit amet")
                  ],
                ),
              )
            ],
          );
  }

  Card ilanAramaCard(String ilanAramaCardTitle, String ilanAramaCardText) {
    return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child:  Column(
                  children: [
                    SizedBox(
                      height: 86,
                      width: 183,
                      child: Column(
                        children: [
                          Text(ilanAramaCardTitle, style: const TextStyle(fontWeight: FontWeight.w600),),
                          Text(ilanAramaCardText)
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}