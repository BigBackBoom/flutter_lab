import 'package:baseapp/src/ui/screen/search/search_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: SearchScreen(),
    );
  }
}