import 'package:banking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyRouter extends StatefulWidget {
  const MyRouter({Key? key}) : super(key: key);

  @override
  _MyRouterState createState() => _MyRouterState();
}

class _MyRouterState extends State<MyRouter> {
  int selectedPageIdx = 0;

  List<Widget> pages = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(selectedPageIdx),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        currentIndex: selectedPageIdx,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedPageIdx = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/transaction.svg'),
              label: 'Transactions'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/settings.svg'), label: 'Settings'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/account.svg'), label: 'Account'),
        ],
      ),
    );
  }
}
