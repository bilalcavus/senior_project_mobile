import 'package:flutter/material.dart';
import 'package:senior_project_mobile/components/custom_appbar.dart';

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
      body: Container(),
    );
  }
}