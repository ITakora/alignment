import 'package:alignment/Items/bottom_nav.dart';
import 'package:alignment/Screens/formula_one.dart';
import 'package:alignment/Screens/formula_two.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  void onTap(int value) {
    setState(() {
      index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [FormulaOneScreen(), FormulaTwoScreen()];

    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigation(
            onTapFunc: (value) {
              onTap(value);
            },
            index: index));
  }
}
