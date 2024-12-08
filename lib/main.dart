import 'package:flutter/material.dart';
import 'package:senior_project_mobile/view/account_page.dart';
import 'package:senior_project_mobile/view/favourites_page.dart';
import 'package:senior_project_mobile/view/home_page_view.dart';
import 'package:senior_project_mobile/view/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/homePage' : (context) => const HomePageView(),
        '/searchPage' : (context) => const SearchPage(),
        '/favouritesPage' : (context) => const FavouritesPage(),
        '/accountPage' : (context) => const AccountPage()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePageView(),
    );
  }
}