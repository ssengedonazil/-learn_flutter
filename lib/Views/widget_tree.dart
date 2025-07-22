import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/home_page.dart';
import 'package:learn_flutter/Views/Pages/profile.dart';
import 'package:learn_flutter/Views/Widgets/nav_bar_widget.dart';
import 'package:learn_flutter/data/notifiers.dart';

List<Widget> pages = [
  HomePage(),
  ProfilePage(),
];
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
String title = 'Learn Flutter';
    return Scaffold(
      
        appBar: AppBar(
          title:  Text(title),
          // leading: Icon(Icons.login),
        ),
        body: ValueListenableBuilder(valueListenable: selectedPageNotifier, builder: (context, selectedPage, child) {
          return pages[selectedPage];
        }),
        bottomNavigationBar: NavBarWidget(),
      );;
  }
}