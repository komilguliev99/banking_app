import 'package:banking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'widgets/my_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent)),
      debugShowCheckedModeBanner: false,
      home: const MyRouter(),
    );
  }
}
