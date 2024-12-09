import 'package:flutter/material.dart';
import 'package:senior_project_mobile/components/custom_appbar.dart';
import 'package:senior_project_mobile/constants/text_strings.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar().customAppBar(TextStrings.accountAppBarTitle),
    );
  }
}