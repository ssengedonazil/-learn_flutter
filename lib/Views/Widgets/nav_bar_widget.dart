import 'package:flutter/material.dart'; 
import 'package:learn_flutter/data/notifiers.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
      return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected:  (int value){
            selectedPageNotifier.value = value;
            print( selectedPageNotifier.value);
          },
          selectedIndex: selectedPage,
        );
    });
  }
}