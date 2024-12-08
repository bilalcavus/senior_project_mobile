import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:senior_project_mobile/components/custom_appbar.dart';
import 'package:senior_project_mobile/components/custom_navbar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar().customAppBar("İlan Ara"),
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
                hintText: 'Ara...',
                prefixIcon: Icon(Iconsax.search_status),
                border: OutlineInputBorder()
              ),
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ilanAramaCard(),
                ilanAramaCard(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: 1, onItemTapped: (p0) {
        
      },),
    );
  }

  Card ilanAramaCard() {
    return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 86,
                      width: 183,
                      child: Column(
                        children: [
                          Text('data')
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}