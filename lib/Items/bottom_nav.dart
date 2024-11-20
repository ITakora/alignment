import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.onTapFunc, required this.index});

  final int index;
  final void Function(int value) onTapFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: NavigationBar(
            onDestinationSelected: onTapFunc,
            selectedIndex: index,
            backgroundColor: Colors.grey,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.calculate_outlined),
                label: 'Formula One',
                selectedIcon: Icon(Icons.calculate),
              ),
              NavigationDestination(
                icon: Icon(Icons.calculate_outlined),
                label: 'Formula Two',
                selectedIcon: Icon(Icons.calculate),
              )
            ]),
      ),
    );
  }
}
