import 'package:banking_app/widgets/appbar.dart';
import 'package:banking_app/widgets/cards_list.dart';
import 'package:banking_app/widgets/recent_transactions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Column(
      children: [Appbar(), CardsList(), RecentTransactions()],
    ));
  }
}
