import 'package:flutter/material.dart';
import 'package:learn_flutter/Views/Pages/well_come.dart';
import 'package:learn_flutter/data/constants.dart';
import 'package:learn_flutter/data/notifiers.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    initThemeMode(); 
    // call your custom method here
  }

  Future<void> initThemeMode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool isDarkMode = prefs.getBool(KConstants.themeModeKey) ?? false;
    isDarkModeNotifier.value = isDarkMode;
    print([isDarkMode, '-------', isDarkModeNotifier.value]);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDark, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.teal,
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WellComePage(),
        );
      },
    );
  }
}
