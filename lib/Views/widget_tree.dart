import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/home_page.dart';
import 'package:learn_flutter/Views/Pages/profile.dart';
import 'package:learn_flutter/Views/Pages/setting_page.dart';
import 'package:learn_flutter/Views/Widgets/nav_bar_widget.dart';
import 'package:learn_flutter/data/constants.dart';
import 'package:learn_flutter/data/notifiers.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});
  @override
  Widget build(BuildContext context) {
    String title = 'Learn Flutter';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(
              isDarkModeNotifier.value ? Icons.dark_mode : Icons.light_mode,
            ),
            onPressed: () async {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              prefs.setBool(KConstants.themeModeKey, isDarkModeNotifier.value);
              final bool? isDarkMode =
                  prefs.getBool(KConstants.themeModeKey) ?? false;
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Settings(title: "Settings0");
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages[selectedPage];
        },
      ),
      bottomNavigationBar: NavBarWidget(),
    );
    ;
  }
}
